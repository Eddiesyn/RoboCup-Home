// Generated by gencpp from file tum_alle_common_msgs/srvGetDepthResponse.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETDEPTHRESPONSE_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETDEPTHRESPONSE_H


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
struct srvGetDepthResponse_
{
  typedef srvGetDepthResponse_<ContainerAllocator> Type;

  srvGetDepthResponse_()
    : depth(0.0)  {
    }
  srvGetDepthResponse_(const ContainerAllocator& _alloc)
    : depth(0.0)  {
  (void)_alloc;
    }



   typedef float _depth_type;
  _depth_type depth;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> const> ConstPtr;

}; // struct srvGetDepthResponse_

typedef ::tum_alle_common_msgs::srvGetDepthResponse_<std::allocator<void> > srvGetDepthResponse;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvGetDepthResponse > srvGetDepthResponsePtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvGetDepthResponse const> srvGetDepthResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6deb06b7b7183f5581b3362a0cb413b7";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6deb06b7b7183f55ULL;
  static const uint64_t static_value2 = 0x81b3362a0cb413b7ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvGetDepthResponse";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32               depth\n\
\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.depth);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvGetDepthResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvGetDepthResponse_<ContainerAllocator>& v)
  {
    s << indent << "depth: ";
    Printer<float>::stream(s, indent + "  ", v.depth);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETDEPTHRESPONSE_H
