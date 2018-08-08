// Generated by gencpp from file tum_alle_common_msgs/srvAnswerReasoningRequest.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVANSWERREASONINGREQUEST_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVANSWERREASONINGREQUEST_H


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
struct srvAnswerReasoningRequest_
{
  typedef srvAnswerReasoningRequest_<ContainerAllocator> Type;

  srvAnswerReasoningRequest_()
    : intent()
    , properties()
    , values()  {
    }
  srvAnswerReasoningRequest_(const ContainerAllocator& _alloc)
    : intent(_alloc)
    , properties(_alloc)
    , values(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _intent_type;
  _intent_type intent;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _properties_type;
  _properties_type properties;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _values_type;
  _values_type values;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srvAnswerReasoningRequest_

typedef ::tum_alle_common_msgs::srvAnswerReasoningRequest_<std::allocator<void> > srvAnswerReasoningRequest;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvAnswerReasoningRequest > srvAnswerReasoningRequestPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvAnswerReasoningRequest const> srvAnswerReasoningRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23656240c9839401071b2ab57504e2bc";
  }

  static const char* value(const ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23656240c9839401ULL;
  static const uint64_t static_value2 = 0x071b2ab57504e2bcULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvAnswerReasoningRequest";
  }

  static const char* value(const ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string intent\n\
string[] properties\n\
string[] values\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.intent);
      stream.next(m.properties);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvAnswerReasoningRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvAnswerReasoningRequest_<ContainerAllocator>& v)
  {
    s << indent << "intent: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.intent);
    s << indent << "properties[]" << std::endl;
    for (size_t i = 0; i < v.properties.size(); ++i)
    {
      s << indent << "  properties[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.properties[i]);
    }
    s << indent << "values[]" << std::endl;
    for (size_t i = 0; i < v.values.size(); ++i)
    {
      s << indent << "  values[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVANSWERREASONINGREQUEST_H
