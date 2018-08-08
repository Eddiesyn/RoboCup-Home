#include <ros/ros.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/ml.hpp>

#include <boost/filesystem.hpp>
#include <math.h>

using namespace cv;
using namespace cv::ml;
using namespace std;

typedef boost::filesystem::directory_iterator direct_it;
string predictPath = "/home/tiago/predict/";

Mat box_regression(Mat& img);
vector<float> getCM(Mat& img);
float getSkewness(Mat& img, Scalar& mean, Scalar& std);


Mat box_regression(Mat& img)
{
	Mat gray;
	cvtColor(img, gray, cv::COLOR_BGR2GRAY);
    vector<std::vector<cv::Point> > contours;
    vector<cv::Vec4i> hierarchy;

    findContours(gray, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE, cv::Point(0, 0));
    vector<vector<Point> > contours_poly( contours.size() );
  	vector<Rect> boundRect( contours.size() );

  	for( uint i = 0; i < contours.size(); i++ )
  	{
    	approxPolyDP( Mat(contours[i]), contours_poly[i], 20, true );
    	boundRect[i] = boundingRect( Mat(contours_poly[i]) );
  	}

  	Rect box;
    int size = 0;

	for( uint i = 0; i < boundRect.size(); i++ )
	{
		if(boundRect[i].height * boundRect[i].width > size)
		{
	  	size = boundRect[i].height * boundRect[i].width;
	  	box = boundRect[i];
		}
	}
      
    Mat dst;
    dst = img(box);

    return dst;
}

vector<float> getCM(Mat& img)
{
	vector<Mat> HSV(3);
	vector<float> CM;
	split(img, HSV);
	Scalar h_mean, h_std, s_mean, s_std, v_mean, v_std;
	meanStdDev(HSV[0], h_mean, h_std);
	meanStdDev(HSV[1], s_mean, s_std);
	meanStdDev(HSV[2], v_mean, v_std);
	CM.push_back(h_mean.val[0]);
	CM.push_back(s_mean.val[0]);
	CM.push_back(v_mean.val[0]);
	CM.push_back(h_std.val[0]);
	CM.push_back(s_std.val[0]);
	CM.push_back(v_std.val[0]);

	float h_skew, s_skew, v_skew;
	h_skew = getSkewness(HSV[0], h_mean, h_std);
	s_skew = getSkewness(HSV[1], s_mean, s_std);
	v_skew = getSkewness(HSV[2], v_mean, v_std);

	CM.push_back(h_skew);
	CM.push_back(s_skew);
	CM.push_back(v_skew);

	return CM;

}

float getSkewness(Mat& img, Scalar& mean, Scalar& std)
{
	float skew;
	float sum = 0.0;
	for(uint i = 0; i < img.rows; i++)
	{
		for(uint j = 0; j < img.cols; j++)
		{
			sum += pow(img.at<uint8_t>(i,j) - mean.val[0], 3);
		}
	}
	skew = sum/(img.rows * img.cols)/pow(std.val[0], 3);

	return skew;
}

int main(int argc, char** argv)
{
//        ROS_INFO("Im here");
//	ros::init(argc, argv, "prediction");
//	ros::NodeHandle nh;

//        ROS_INFO("Im here");

        Ptr<SVM> svm = SVM::load("/home/tiago/small_god/src/perception/src/svm_trained.xml");
        ROS_INFO("Im here");
	if(svm->empty())
	{
		cout << "load svm detector failed!" << endl;
		return -1;
	}
	Mat FeatureMat, response;
	Mat src, hsv;

	direct_it itEnd;
	for(direct_it itor(predictPath.c_str()); itor != itEnd; ++itor)
	{
		string file = itor->path().string();
		cout << file << endl;
		boost::filesystem::path filePath(file);

		src = imread(filePath.string(), 1);
		src = box_regression(src);
		cvtColor(src, hsv, CV_BGR2HSV);
		Mat feature(getCM(hsv), true);
		feature = feature.reshape(0,1);
		FeatureMat.push_back(feature);
	}
	svm->predict(FeatureMat, response);
//	cout << response << endl;
        cout << response.cols << " " << response.rows << endl;
        cout << response.at<float>(0,0) << endl;
//	ros::spin();

	return 0;
}
