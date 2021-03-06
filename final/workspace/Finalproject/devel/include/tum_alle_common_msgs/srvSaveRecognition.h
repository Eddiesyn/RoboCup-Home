// Generated by gencpp from file tum_alle_common_msgs/srvSaveRecognition.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITION_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITION_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvSaveRecognitionRequest.h>
#include <tum_alle_common_msgs/srvSaveRecognitionResponse.h>


namespace tum_alle_common_msgs
{

struct srvSaveRecognition
{

typedef srvSaveRecognitionRequest Request;
typedef srvSaveRecognitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvSaveRecognition
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvSaveRecognition > {
  static const char* value()
  {
    return "dbd33ba36000bbcab15d127c12dd910e";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognition&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvSaveRecognition > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvSaveRecognition";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognition&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvSaveRecognitionRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvSaveRecognition > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvSaveRecognitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvSaveRecognition >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvSaveRecognitionRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvSaveRecognition > 
template<>
struct DataType< ::tum_alle_common_msgs::srvSaveRecognitionRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvSaveRecognition >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvSaveRecognitionResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvSaveRecognition > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvSaveRecognitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvSaveRecognition >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvSaveRecognitionResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvSaveRecognition > 
template<>
struct DataType< ::tum_alle_common_msgs::srvSaveRecognitionResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvSaveRecognition >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITION_H
