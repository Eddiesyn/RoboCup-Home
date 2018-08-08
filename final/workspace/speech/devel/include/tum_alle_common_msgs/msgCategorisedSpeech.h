// Generated by gencpp from file tum_alle_common_msgs/msgCategorisedSpeech.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_MSGCATEGORISEDSPEECH_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_MSGCATEGORISEDSPEECH_H


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
struct msgCategorisedSpeech_
{
  typedef msgCategorisedSpeech_<ContainerAllocator> Type;

  msgCategorisedSpeech_()
    : name()
    , location()
    , object()  {
    }
  msgCategorisedSpeech_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , location(_alloc)
    , object(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _location_type;
  _location_type location;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _object_type;
  _object_type object;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> const> ConstPtr;

}; // struct msgCategorisedSpeech_

typedef ::tum_alle_common_msgs::msgCategorisedSpeech_<std::allocator<void> > msgCategorisedSpeech;

typedef boost::shared_ptr< ::tum_alle_common_msgs::msgCategorisedSpeech > msgCategorisedSpeechPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::msgCategorisedSpeech const> msgCategorisedSpeechConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf1b457a008f8c8620b2e8077ee378e0";
  }

  static const char* value(const ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf1b457a008f8c86ULL;
  static const uint64_t static_value2 = 0x20b2e8077ee378e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/msgCategorisedSpeech";
  }

  static const char* value(const ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
string location\n\
string object\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.location);
      stream.next(m.object);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgCategorisedSpeech_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::msgCategorisedSpeech_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "location: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.location);
    s << indent << "object: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.object);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_MSGCATEGORISEDSPEECH_H