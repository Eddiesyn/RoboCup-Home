// Generated by gencpp from file tum_alle_common_msgs/srvTableObjects.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTS_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTS_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvTableObjectsRequest.h>
#include <tum_alle_common_msgs/srvTableObjectsResponse.h>


namespace tum_alle_common_msgs
{

struct srvTableObjects
{

typedef srvTableObjectsRequest Request;
typedef srvTableObjectsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvTableObjects
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvTableObjects > {
  static const char* value()
  {
    return "a1ce48b3803e21bee5394bd8790e6e04";
  }

  static const char* value(const ::tum_alle_common_msgs::srvTableObjects&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvTableObjects > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvTableObjects";
  }

  static const char* value(const ::tum_alle_common_msgs::srvTableObjects&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvTableObjectsRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvTableObjects > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvTableObjectsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvTableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvTableObjectsRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvTableObjects > 
template<>
struct DataType< ::tum_alle_common_msgs::srvTableObjectsRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvTableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvTableObjectsResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvTableObjects > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvTableObjectsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvTableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvTableObjectsResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvTableObjects > 
template<>
struct DataType< ::tum_alle_common_msgs::srvTableObjectsResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvTableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvTableObjectsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVTABLEOBJECTS_H
