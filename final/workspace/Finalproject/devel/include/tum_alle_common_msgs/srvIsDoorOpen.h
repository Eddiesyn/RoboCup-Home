// Generated by gencpp from file tum_alle_common_msgs/srvIsDoorOpen.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVISDOOROPEN_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVISDOOROPEN_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvIsDoorOpenRequest.h>
#include <tum_alle_common_msgs/srvIsDoorOpenResponse.h>


namespace tum_alle_common_msgs
{

struct srvIsDoorOpen
{

typedef srvIsDoorOpenRequest Request;
typedef srvIsDoorOpenResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvIsDoorOpen
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpen > {
  static const char* value()
  {
    return "71761759cbee9765d6f47a7b9585bd82";
  }

  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpen&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvIsDoorOpen > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvIsDoorOpen";
  }

  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpen&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpenRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpen > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpenRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpen >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpenRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvIsDoorOpenRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvIsDoorOpen > 
template<>
struct DataType< ::tum_alle_common_msgs::srvIsDoorOpenRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvIsDoorOpen >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpenRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpenResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpen > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpenResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvIsDoorOpen >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpenResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvIsDoorOpenResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvIsDoorOpen > 
template<>
struct DataType< ::tum_alle_common_msgs::srvIsDoorOpenResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvIsDoorOpen >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvIsDoorOpenResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVISDOOROPEN_H