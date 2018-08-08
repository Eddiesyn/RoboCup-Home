// Generated by gencpp from file all_msgs/Object.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_OBJECT_H
#define ALL_MSGS_MESSAGE_OBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PointStamped.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct Object_
{
  typedef Object_<ContainerAllocator> Type;

  Object_()
    : id(0)
    , world_pose()
    , cam_pose()
    , heading(0.0)
    , velocity(0.0)
    , width(0.0)
    , length(0.0)
    , semantic_confidence(0.0)
    , semantic_name()
    , semantic_id(0)
    , r(0)
    , g(0)
    , b(0)
    , is_track(false)
    , is_target(false)  {
    }
  Object_(const ContainerAllocator& _alloc)
    : id(0)
    , world_pose(_alloc)
    , cam_pose(_alloc)
    , heading(0.0)
    , velocity(0.0)
    , width(0.0)
    , length(0.0)
    , semantic_confidence(0.0)
    , semantic_name(_alloc)
    , semantic_id(0)
    , r(0)
    , g(0)
    , b(0)
    , is_track(false)
    , is_target(false)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _world_pose_type;
  _world_pose_type world_pose;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _cam_pose_type;
  _cam_pose_type cam_pose;

   typedef float _heading_type;
  _heading_type heading;

   typedef float _velocity_type;
  _velocity_type velocity;

   typedef float _width_type;
  _width_type width;

   typedef float _length_type;
  _length_type length;

   typedef float _semantic_confidence_type;
  _semantic_confidence_type semantic_confidence;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _semantic_name_type;
  _semantic_name_type semantic_name;

   typedef uint32_t _semantic_id_type;
  _semantic_id_type semantic_id;

   typedef uint32_t _r_type;
  _r_type r;

   typedef uint32_t _g_type;
  _g_type g;

   typedef uint32_t _b_type;
  _b_type b;

   typedef uint8_t _is_track_type;
  _is_track_type is_track;

   typedef uint8_t _is_target_type;
  _is_target_type is_target;





  typedef boost::shared_ptr< ::all_msgs::Object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::Object_<ContainerAllocator> const> ConstPtr;

}; // struct Object_

typedef ::all_msgs::Object_<std::allocator<void> > Object;

typedef boost::shared_ptr< ::all_msgs::Object > ObjectPtr;
typedef boost::shared_ptr< ::all_msgs::Object const> ObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::Object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::Object_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::all_msgs::Object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Object_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91171f25471df23310fdf72d759cfc7e";
  }

  static const char* value(const ::all_msgs::Object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91171f25471df233ULL;
  static const uint64_t static_value2 = 0x10fdf72d759cfc7eULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/Object";
  }

  static const char* value(const ::all_msgs::Object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
\n\
geometry_msgs/PointStamped world_pose\n\
geometry_msgs/PointStamped cam_pose\n\
\n\
float32 heading\n\
float32 velocity\n\
\n\
float32 width\n\
float32 length\n\
\n\
\n\
float32 semantic_confidence\n\
string semantic_name\n\
uint32 semantic_id\n\
\n\
uint32 r\n\
uint32 g\n\
uint32 b\n\
\n\
bool is_track\n\
bool is_target\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::all_msgs::Object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::Object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.world_pose);
      stream.next(m.cam_pose);
      stream.next(m.heading);
      stream.next(m.velocity);
      stream.next(m.width);
      stream.next(m.length);
      stream.next(m.semantic_confidence);
      stream.next(m.semantic_name);
      stream.next(m.semantic_id);
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
      stream.next(m.is_track);
      stream.next(m.is_target);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::Object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::Object_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "world_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.world_pose);
    s << indent << "cam_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.cam_pose);
    s << indent << "heading: ";
    Printer<float>::stream(s, indent + "  ", v.heading);
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "length: ";
    Printer<float>::stream(s, indent + "  ", v.length);
    s << indent << "semantic_confidence: ";
    Printer<float>::stream(s, indent + "  ", v.semantic_confidence);
    s << indent << "semantic_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.semantic_name);
    s << indent << "semantic_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.semantic_id);
    s << indent << "r: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.b);
    s << indent << "is_track: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_track);
    s << indent << "is_target: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_target);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_OBJECT_H