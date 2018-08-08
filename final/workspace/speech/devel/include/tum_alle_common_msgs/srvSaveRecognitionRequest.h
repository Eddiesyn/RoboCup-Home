// Generated by gencpp from file tum_alle_common_msgs/srvSaveRecognitionRequest.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITIONREQUEST_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tum_alle_common_msgs/msg3DRecognition.h>

namespace tum_alle_common_msgs
{
template <class ContainerAllocator>
struct srvSaveRecognitionRequest_
{
  typedef srvSaveRecognitionRequest_<ContainerAllocator> Type;

  srvSaveRecognitionRequest_()
    : recognition()  {
    }
  srvSaveRecognitionRequest_(const ContainerAllocator& _alloc)
    : recognition(_alloc)  {
  (void)_alloc;
    }



   typedef  ::tum_alle_common_msgs::msg3DRecognition_<ContainerAllocator>  _recognition_type;
  _recognition_type recognition;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srvSaveRecognitionRequest_

typedef ::tum_alle_common_msgs::srvSaveRecognitionRequest_<std::allocator<void> > srvSaveRecognitionRequest;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSaveRecognitionRequest > srvSaveRecognitionRequestPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSaveRecognitionRequest const> srvSaveRecognitionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tum_alle_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tum_alle_common_msgs': ['/home/atHomeSS18/God-Watcher/workspace/speech/src/tum_alle_common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b9271109a659cd315f5e009071981802";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb9271109a659cd31ULL;
  static const uint64_t static_value2 = 0x5f5e009071981802ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvSaveRecognitionRequest";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg3DRecognition recognition\n\
\n\
================================================================================\n\
MSG: tum_alle_common_msgs/msg3DRecognition\n\
sensor_msgs/Image       image\n\
sensor_msgs/Image       depth_image\n\
geometry_msgs/Transform transform\n\
msg2DPrediction[]       predictions2D\n\
msg3DPrediction[]       predictions3D\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: tum_alle_common_msgs/msg2DPrediction\n\
string    label\n\
float64   confidence\n\
int32[4]  rect\n\
#geometry_msgs/Point[] object_centers\n\
\n\
================================================================================\n\
MSG: tum_alle_common_msgs/msg3DPrediction\n\
string                      frame\n\
geometry_msgs/PointStamped  point\n\
geometry_msgs/Vector3       size\n\
string                      label\n\
float32                     confidence\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.recognition);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvSaveRecognitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvSaveRecognitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "recognition: ";
    s << std::endl;
    Printer< ::tum_alle_common_msgs::msg3DRecognition_<ContainerAllocator> >::stream(s, indent + "  ", v.recognition);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSAVERECOGNITIONREQUEST_H
