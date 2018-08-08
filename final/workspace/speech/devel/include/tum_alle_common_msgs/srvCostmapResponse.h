// Generated by gencpp from file tum_alle_common_msgs/srvCostmapResponse.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVCOSTMAPRESPONSE_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVCOSTMAPRESPONSE_H


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
struct srvCostmapResponse_
{
  typedef srvCostmapResponse_<ContainerAllocator> Type;

  srvCostmapResponse_()
    : reply(false)  {
    }
  srvCostmapResponse_(const ContainerAllocator& _alloc)
    : reply(false)  {
  (void)_alloc;
    }



   typedef uint8_t _reply_type;
  _reply_type reply;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> const> ConstPtr;

}; // struct srvCostmapResponse_

typedef ::tum_alle_common_msgs::srvCostmapResponse_<std::allocator<void> > srvCostmapResponse;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvCostmapResponse > srvCostmapResponsePtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvCostmapResponse const> srvCostmapResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tum_alle_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tum_alle_common_msgs': ['/home/atHomeSS18/God-Watcher/workspace/speech/src/tum_alle_common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06d4f276c51f7469624c6fbcbf0e7869";
  }

  static const char* value(const ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06d4f276c51f7469ULL;
  static const uint64_t static_value2 = 0x624c6fbcbf0e7869ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvCostmapResponse";
  }

  static const char* value(const ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool reply\n\
\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reply);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvCostmapResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvCostmapResponse_<ContainerAllocator>& v)
  {
    s << indent << "reply: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reply);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVCOSTMAPRESPONSE_H
