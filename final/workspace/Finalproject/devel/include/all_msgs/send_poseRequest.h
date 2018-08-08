// Generated by gencpp from file all_msgs/send_poseRequest.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_SEND_POSEREQUEST_H
#define ALL_MSGS_MESSAGE_SEND_POSEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct send_poseRequest_
{
  typedef send_poseRequest_<ContainerAllocator> Type;

  send_poseRequest_()
    : pose()
    , is_target(false)  {
    }
  send_poseRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , is_target(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef uint8_t _is_target_type;
  _is_target_type is_target;





  typedef boost::shared_ptr< ::all_msgs::send_poseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::send_poseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct send_poseRequest_

typedef ::all_msgs::send_poseRequest_<std::allocator<void> > send_poseRequest;

typedef boost::shared_ptr< ::all_msgs::send_poseRequest > send_poseRequestPtr;
typedef boost::shared_ptr< ::all_msgs::send_poseRequest const> send_poseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::send_poseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::send_poseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace all_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'all_msgs': ['/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::send_poseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::send_poseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::send_poseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::send_poseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::send_poseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::send_poseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::send_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc9dd3a92c6d221e32c86b23f47f396f";
  }

  static const char* value(const ::all_msgs::send_poseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc9dd3a92c6d221eULL;
  static const uint64_t static_value2 = 0x32c86b23f47f396fULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::send_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/send_poseRequest";
  }

  static const char* value(const ::all_msgs::send_poseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::send_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped pose\n\
bool is_target\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::all_msgs::send_poseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::send_poseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.is_target);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct send_poseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::send_poseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::send_poseRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "is_target: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_target);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_SEND_POSEREQUEST_H