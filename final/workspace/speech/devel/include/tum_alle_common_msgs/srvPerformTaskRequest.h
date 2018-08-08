// Generated by gencpp from file tum_alle_common_msgs/srvPerformTaskRequest.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASKREQUEST_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASKREQUEST_H


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
struct srvPerformTaskRequest_
{
  typedef srvPerformTaskRequest_<ContainerAllocator> Type;

  srvPerformTaskRequest_()
    : command()
    , goal_location()
    , goal_object()
    , object_general_location()
    , object_specific_location()
    , speech_text()
    , confirmation()  {
    }
  srvPerformTaskRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)
    , goal_location(_alloc)
    , goal_object(_alloc)
    , object_general_location(_alloc)
    , object_specific_location(_alloc)
    , speech_text(_alloc)
    , confirmation(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _goal_location_type;
  _goal_location_type goal_location;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _goal_object_type;
  _goal_object_type goal_object;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _object_general_location_type;
  _object_general_location_type object_general_location;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _object_specific_location_type;
  _object_specific_location_type object_specific_location;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _speech_text_type;
  _speech_text_type speech_text;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _confirmation_type;
  _confirmation_type confirmation;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srvPerformTaskRequest_

typedef ::tum_alle_common_msgs::srvPerformTaskRequest_<std::allocator<void> > srvPerformTaskRequest;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPerformTaskRequest > srvPerformTaskRequestPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvPerformTaskRequest const> srvPerformTaskRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cbd6abba08de9ad042e50b1f8315960c";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcbd6abba08de9ad0ULL;
  static const uint64_t static_value2 = 0x42e50b1f8315960cULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvPerformTaskRequest";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string command\n\
string goal_location\n\
string goal_object\n\
string object_general_location\n\
string object_specific_location\n\
string speech_text\n\
string confirmation\n\
\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.goal_location);
      stream.next(m.goal_object);
      stream.next(m.object_general_location);
      stream.next(m.object_specific_location);
      stream.next(m.speech_text);
      stream.next(m.confirmation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvPerformTaskRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvPerformTaskRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
    s << indent << "goal_location: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.goal_location);
    s << indent << "goal_object: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.goal_object);
    s << indent << "object_general_location: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.object_general_location);
    s << indent << "object_specific_location: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.object_specific_location);
    s << indent << "speech_text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.speech_text);
    s << indent << "confirmation: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.confirmation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASKREQUEST_H