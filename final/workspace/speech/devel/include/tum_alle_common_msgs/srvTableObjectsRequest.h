// Generated by gencpp from file tum_alle_common_msgs/srvTableObjectsRequest.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTSREQUEST_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tum_alle_common_msgs/msg2DPrediction.h>
#include <tum_alle_common_msgs/msg3DPrediction.h>

namespace tum_alle_common_msgs
{
template <class ContainerAllocator>
struct srvTableObjectsRequest_
{
  typedef srvTableObjectsRequest_<ContainerAllocator> Type;

  srvTableObjectsRequest_()
    : pred2D()
    , pred3D()  {
    }
  srvTableObjectsRequest_(const ContainerAllocator& _alloc)
    : pred2D(_alloc)
    , pred3D(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::tum_alle_common_msgs::msg2DPrediction_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::tum_alle_common_msgs::msg2DPrediction_<ContainerAllocator> >::other >  _pred2D_type;
  _pred2D_type pred2D;

   typedef std::vector< ::tum_alle_common_msgs::msg3DPrediction_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::tum_alle_common_msgs::msg3DPrediction_<ContainerAllocator> >::other >  _pred3D_type;
  _pred3D_type pred3D;





  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct srvTableObjectsRequest_

typedef ::tum_alle_common_msgs::srvTableObjectsRequest_<std::allocator<void> > srvTableObjectsRequest;

typedef boost::shared_ptr< ::tum_alle_common_msgs::srvTableObjectsRequest > srvTableObjectsRequestPtr;
typedef boost::shared_ptr< ::tum_alle_common_msgs::srvTableObjectsRequest const> srvTableObjectsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa8adef27f07dd150f5d037007e485c9";
  }

  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa8adef27f07dd15ULL;
  static const uint64_t static_value2 = 0x0f5d037007e485c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tum_alle_common_msgs/srvTableObjectsRequest";
  }

  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg2DPrediction[] pred2D\n\
msg3DPrediction[] pred3D\n\
\n\
================================================================================\n\
MSG: tum_alle_common_msgs/msg2DPrediction\n\
string    label\n\
float64   confidence\n\
int32[4]  rect\n\
#geometry_msgs/Point[] object_centers\n\
\n\
================================================================================\n\
MSG: tum_alle_common_msgs/msg3DPrediction\n\
string                      frame\n\
geometry_msgs/PointStamped  point\n\
geometry_msgs/Vector3       size\n\
string                      label\n\
float32                     confidence\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pred2D);
      stream.next(m.pred3D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srvTableObjectsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tum_alle_common_msgs::srvTableObjectsRequest_<ContainerAllocator>& v)
  {
    s << indent << "pred2D[]" << std::endl;
    for (size_t i = 0; i < v.pred2D.size(); ++i)
    {
      s << indent << "  pred2D[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::tum_alle_common_msgs::msg2DPrediction_<ContainerAllocator> >::stream(s, indent + "    ", v.pred2D[i]);
    }
    s << indent << "pred3D[]" << std::endl;
    for (size_t i = 0; i < v.pred3D.size(); ++i)
    {
      s << indent << "  pred3D[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::tum_alle_common_msgs::msg3DPrediction_<ContainerAllocator> >::stream(s, indent + "    ", v.pred3D[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTSREQUEST_H
