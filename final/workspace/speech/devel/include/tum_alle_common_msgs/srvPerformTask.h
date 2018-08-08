// Generated by gencpp from file tum_alle_common_msgs/srvPerformTask.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASK_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASK_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvPerformTaskRequest.h>
#include <tum_alle_common_msgs/srvPerformTaskResponse.h>


namespace tum_alle_common_msgs
{

struct srvPerformTask
{

typedef srvPerformTaskRequest Request;
typedef srvPerformTaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvPerformTask
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPerformTask > {
  static const char* value()
  {
    return "cbd6abba08de9ad042e50b1f8315960c";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPerformTask&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvPerformTask > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvPerformTask";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPerformTask&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPerformTaskRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPerformTask > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPerformTaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvPerformTask >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvPerformTaskRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvPerformTask > 
template<>
struct DataType< ::tum_alle_common_msgs::srvPerformTaskRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvPerformTask >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPerformTaskResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPerformTask > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPerformTaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvPerformTask >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvPerformTaskResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvPerformTask > 
template<>
struct DataType< ::tum_alle_common_msgs::srvPerformTaskResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvPerformTask >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPerformTaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPERFORMTASK_H