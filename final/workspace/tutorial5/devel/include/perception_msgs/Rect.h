// Generated by gencpp from file perception_msgs/Rect.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_RECT_H
#define PERCEPTION_MSGS_MESSAGE_RECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct Rect_
{
  typedef Rect_<ContainerAllocator> Type;

  Rect_()
    : header()
    , id()
    , x(0)
    , y(0)
    , height(0)
    , width(0)  {
    }
  Rect_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(_alloc)
    , x(0)
    , y(0)
    , height(0)
    , width(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;

   typedef int32_t _height_type;
  _height_type height;

   typedef int32_t _width_type;
  _width_type width;





  typedef boost::shared_ptr< ::perception_msgs::Rect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Rect_<ContainerAllocator> const> ConstPtr;

}; // struct Rect_

typedef ::perception_msgs::Rect_<std::allocator<void> > Rect;

typedef boost::shared_ptr< ::perception_msgs::Rect > RectPtr;
typedef boost::shared_ptr< ::perception_msgs::Rect const> RectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Rect_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Rect_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'perception_msgs': ['/home/atHomeSS18/God-Watcher/workspace/tutorial5/src/perception_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Rect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Rect_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Rect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Rect_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a2158b67ad47dd2f912086d73fcc0da";
  }

  static const char* value(const ::perception_msgs::Rect_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a2158b67ad47dd2ULL;
  static const uint64_t static_value2 = 0xf912086d73fcc0daULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Rect";
  }

  static const char* value(const ::perception_msgs::Rect_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string id\n\
int32 x\n\
int32 y\n\
int32 height\n\
int32 width\n\
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
";
  }

  static const char* value(const ::perception_msgs::Rect_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Rect_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.height);
      stream.next(m.width);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Rect_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Rect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Rect_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_RECT_H
