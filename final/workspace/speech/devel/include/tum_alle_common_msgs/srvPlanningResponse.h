// Generated by gencpp from file tum_alle_common_msgs/srvPlanningResponse.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNINGRESPONSE_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNINGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tum_alle_common_msgs
{
template <class ContainerAllocator>
struct srvPlanningResponse_
{
  typedef srvPlanningResponse_<ContainerAllocator> Type;

  srvPlanningResponse_()
    : status()  {
    }
  srvPlanningResponse_(const ContainerAllocator& _alloc)
    : status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> const> ConstPtr;

}; // struct srvPlanningResponse_

typedef ::tum_alle_common_msgs::srvPlanningResponse_<std::allocator<void> > srvPlanningResponse;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPlanningResponse > srvPlanningResponsePtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPlanningResponse const> srvPlanningResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fe5af303955c287688e7347e9b00278";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fe5af303955c287ULL;
  static const uint64_t static_value2 = 0x688e7347e9b00278ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvPlanningResponse";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvPlanningResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvPlanningResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNINGRESPONSE_H
