// Generated by gencpp from file tum_alle_common_msgs/srvNavigationRequest.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVNAVIGATIONREQUEST_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVNAVIGATIONREQUEST_H


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
struct srvNavigationRequest_
{
  typedef srvNavigationRequest_<ContainerAllocator> Type;

  srvNavigationRequest_()
    : command()
    , location_id()
    , location_pose()  {
    }
  srvNavigationRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)
    , location_id(_alloc)
    , location_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _location_id_type;
  _location_id_type location_id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _location_pose_type;
  _location_pose_type location_pose;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srvNavigationRequest_

typedef ::tum_alle_common_msgs::srvNavigationRequest_<std::allocator<void> > srvNavigationRequest;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvNavigationRequest > srvNavigationRequestPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvNavigationRequest const> srvNavigationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tum_alle_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tum_alle_common_msgs': ['/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/tum_alle_common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "97ff4203336109316a851e8530b17f43";
  }

  static const char* value(const ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x97ff420333610931ULL;
  static const uint64_t static_value2 = 0x6a851e8530b17f43ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvNavigationRequest";
  }

  static const char* value(const ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command\n\
string location_id\n\
geometry_msgs/Point location_pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.location_id);
      stream.next(m.location_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvNavigationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvNavigationRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
    s << indent << "location_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.location_id);
    s << indent << "location_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.location_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVNAVIGATIONREQUEST_H