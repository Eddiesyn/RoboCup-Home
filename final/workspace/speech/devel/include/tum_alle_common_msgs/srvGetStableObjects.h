// Generated by gencpp from file tum_alle_common_msgs/srvGetStableObjects.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETSTABLEOBJECTS_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETSTABLEOBJECTS_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvGetStableObjectsRequest.h>
#include <tum_alle_common_msgs/srvGetStableObjectsResponse.h>


namespace tum_alle_common_msgs
{

struct srvGetStableObjects
{

typedef srvGetStableObjectsRequest Request;
typedef srvGetStableObjectsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvGetStableObjects
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetStableObjects > {
  static const char* value()
  {
    return "6268bb2b461282f65320ab49c26d8ff4";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjects&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvGetStableObjects > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvGetStableObjects";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjects&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetStableObjectsRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetStableObjects > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetStableObjectsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvGetStableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjectsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvGetStableObjectsRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvGetStableObjects > 
template<>
struct DataType< ::tum_alle_common_msgs::srvGetStableObjectsRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvGetStableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjectsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetStableObjectsResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetStableObjects > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetStableObjectsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvGetStableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjectsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvGetStableObjectsResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvGetStableObjects > 
template<>
struct DataType< ::tum_alle_common_msgs::srvGetStableObjectsResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvGetStableObjects >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetStableObjectsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETSTABLEOBJECTS_H
