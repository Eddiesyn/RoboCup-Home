// Generated by gencpp from file perception_msgs/Box.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_BOX_H
#define PERCEPTION_MSGS_MESSAGE_BOX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace perception_msgs
{
template <class ContainerAllocator>
struct Box_
{
  typedef Box_<ContainerAllocator> Type;

  Box_()
    : xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)  {
    }
  Box_(const ContainerAllocator& _alloc)
    : xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)  {
  (void)_alloc;
    }



   typedef int64_t _xmin_type;
  _xmin_type xmin;

   typedef int64_t _ymin_type;
  _ymin_type ymin;

   typedef int64_t _xmax_type;
  _xmax_type xmax;

   typedef int64_t _ymax_type;
  _ymax_type ymax;





  typedef boost::shared_ptr< ::perception_msgs::Box_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Box_<ContainerAllocator> const> ConstPtr;

}; // struct Box_

typedef ::perception_msgs::Box_<std::allocator<void> > Box;

typedef boost::shared_ptr< ::perception_msgs::Box > BoxPtr;
typedef boost::shared_ptr< ::perception_msgs::Box const> BoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Box_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Box_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'perception_msgs': ['/home/atHomeSS18/God-Watcher/workspace/tutorial5/src/perception_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Box_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Box_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Box_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Box_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Box_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Box_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d9e786fac35034eb471d6213c6c7c5f";
  }

  static const char* value(const ::perception_msgs::Box_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d9e786fac35034eULL;
  static const uint64_t static_value2 = 0xb471d6213c6c7c5fULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Box";
  }

  static const char* value(const ::perception_msgs::Box_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 xmin\n\
int64 ymin\n\
int64 xmax\n\
int64 ymax\n\
";
  }

  static const char* value(const ::perception_msgs::Box_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Box_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xmin);
      stream.next(m.ymin);
      stream.next(m.xmax);
      stream.next(m.ymax);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Box_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Box_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Box_<ContainerAllocator>& v)
  {
    s << indent << "xmin: ";
    Printer<int64_t>::stream(s, indent + "  ", v.xmin);
    s << indent << "ymin: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ymin);
    s << indent << "xmax: ";
    Printer<int64_t>::stream(s, indent + "  ", v.xmax);
    s << indent << "ymax: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ymax);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_BOX_H
