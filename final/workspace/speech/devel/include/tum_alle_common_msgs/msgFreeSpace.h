// Generated by gencpp from file tum_alle_common_msgs/msgFreeSpace.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_MSGFREESPACE_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_MSGFREESPACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace tum_alle_common_msgs
{
template <class ContainerAllocator>
struct msgFreeSpace_
{
  typedef msgFreeSpace_<ContainerAllocator> Type;

  msgFreeSpace_()
    : corners()  {
    }
  msgFreeSpace_(const ContainerAllocator& _alloc)
    : corners(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _corners_type;
  _corners_type corners;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> const> ConstPtr;

}; // struct msgFreeSpace_

typedef ::tum_alle_common_msgs::msgFreeSpace_<std::allocator<void> > msgFreeSpace;

typedef boost::shared_ptr< ::tum_alle_common_msgs::msgFreeSpace > msgFreeSpacePtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::msgFreeSpace const> msgFreeSpaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a0e200474a3819c8499cd604fce8e114";
  }

  static const char* value(const ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa0e200474a3819c8ULL;
  static const uint64_t static_value2 = 0x499cd604fce8e114ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/msgFreeSpace";
  }

  static const char* value(const ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] 	corners\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.corners);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgFreeSpace_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::msgFreeSpace_<ContainerAllocator>& v)
  {
    s << indent << "corners[]" << std::endl;
    for (size_t i = 0; i < v.corners.size(); ++i)
    {
      s << indent << "  corners[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.corners[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_MSGFREESPACE_H