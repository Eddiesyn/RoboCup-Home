// Generated by gencpp from file tum_alle_common_msgs/srvGetFreeSpaces.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETFREESPACES_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETFREESPACES_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvGetFreeSpacesRequest.h>
#include <tum_alle_common_msgs/srvGetFreeSpacesResponse.h>


namespace tum_alle_common_msgs
{

struct srvGetFreeSpaces
{

typedef srvGetFreeSpacesRequest Request;
typedef srvGetFreeSpacesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvGetFreeSpaces
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpaces > {
  static const char* value()
  {
    return "22e0f6037d1e4f620ad89e16963171eb";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpaces&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvGetFreeSpaces > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvGetFreeSpaces";
  }

  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpaces&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpacesRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpaces > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpacesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpaces >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpacesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvGetFreeSpacesRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvGetFreeSpaces > 
template<>
struct DataType< ::tum_alle_common_msgs::srvGetFreeSpacesRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvGetFreeSpaces >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpacesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpacesResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpaces > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpacesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvGetFreeSpaces >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpacesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvGetFreeSpacesResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvGetFreeSpaces > 
template<>
struct DataType< ::tum_alle_common_msgs::srvGetFreeSpacesResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvGetFreeSpaces >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvGetFreeSpacesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVGETFREESPACES_H
