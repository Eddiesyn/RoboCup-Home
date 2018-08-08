// Generated by gencpp from file tum_alle_common_msgs/srvSpeechRecognitionResponse.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSPEECHRECOGNITIONRESPONSE_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSPEECHRECOGNITIONRESPONSE_H


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
struct srvSpeechRecognitionResponse_
{
  typedef srvSpeechRecognitionResponse_<ContainerAllocator> Type;

  srvSpeechRecognitionResponse_()
    : response(false)  {
    }
  srvSpeechRecognitionResponse_(const ContainerAllocator& _alloc)
    : response(false)  {
  (void)_alloc;
    }



   typedef uint8_t _response_type;
  _response_type response;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct srvSpeechRecognitionResponse_

typedef ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<std::allocator<void> > srvSpeechRecognitionResponse;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSpeechRecognitionResponse > srvSpeechRecognitionResponsePtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvSpeechRecognitionResponse const> srvSpeechRecognitionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "003b81baa95ab323fc1ddf3c7d0bee81";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x003b81baa95ab323ULL;
  static const uint64_t static_value2 = 0xfc1ddf3c7d0bee81ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvSpeechRecognitionResponse";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool response\n\
\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvSpeechRecognitionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvSpeechRecognitionResponse_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVSPEECHRECOGNITIONRESPONSE_H
