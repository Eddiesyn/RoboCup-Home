// Generated by gencpp from file all_msgs/Boxes.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_BOXES_H
#define ALL_MSGS_MESSAGE_BOXES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <all_msgs/Box.h>

namespace all_msgs
{
template <class ContainerAllocator>
struct Boxes_
{
  typedef Boxes_<ContainerAllocator> Type;

  Boxes_()
    : header()
    , Boxes()  {
    }
  Boxes_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Boxes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::all_msgs::Box_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::all_msgs::Box_<ContainerAllocator> >::other >  _Boxes_type;
  _Boxes_type Boxes;





  typedef boost::shared_ptr< ::all_msgs::Boxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::all_msgs::Boxes_<ContainerAllocator> const> ConstPtr;

}; // struct Boxes_

typedef ::all_msgs::Boxes_<std::allocator<void> > Boxes;

typedef boost::shared_ptr< ::all_msgs::Boxes > BoxesPtr;
typedef boost::shared_ptr< ::all_msgs::Boxes const> BoxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::all_msgs::Boxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::all_msgs::Boxes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace all_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'all_msgs': ['/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Boxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::all_msgs::Boxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Boxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::all_msgs::Boxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Boxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::all_msgs::Boxes_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::all_msgs::Boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e6d6625d0cf4ae9acd2f65688e673d2";
  }

  static const char* value(const ::all_msgs::Boxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e6d6625d0cf4ae9ULL;
  static const uint64_t static_value2 = 0xacd2f65688e673d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::all_msgs::Boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "all_msgs/Boxes";
  }

  static const char* value(const ::all_msgs::Boxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::all_msgs::Boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Box[] Boxes\n\
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
MSG: all_msgs/Box\n\
Header header\n\
string id\n\
float64 probability\n\
int32 x\n\
int32 y\n\
int32 height\n\
int32 width\n\
";
  }

  static const char* value(const ::all_msgs::Boxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::all_msgs::Boxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Boxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Boxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::all_msgs::Boxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::all_msgs::Boxes_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Boxes[]" << std::endl;
    for (size_t i = 0; i < v.Boxes.size(); ++i)
    {
      s << indent << "  Boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::all_msgs::Box_<ContainerAllocator> >::stream(s, indent + "    ", v.Boxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ALL_MSGS_MESSAGE_BOXES_H