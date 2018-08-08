// Generated by gencpp from file tum_alle_common_msgs/srvPlanning.msg
// DO NOT EDIT!


#ifndef TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNING_H
#define TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNING_H

#include <ros/service_traits.h>


#include <tum_alle_common_msgs/srvPlanningRequest.h>
#include <tum_alle_common_msgs/srvPlanningResponse.h>


namespace tum_alle_common_msgs
{

struct srvPlanning
{

typedef srvPlanningRequest Request;
typedef srvPlanningResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srvPlanning
} // namespace tum_alle_common_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPlanning > {
  static const char* value()
  {
    return "4e32a46cd1a62ca71b3f699ad60b447c";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPlanning&) { return value(); }
};

template<>
struct DataType< ::tum_alle_common_msgs::srvPlanning > {
  static const char* value()
  {
    return "tum_alle_common_msgs/srvPlanning";
  }

  static const char* value(const ::tum_alle_common_msgs::srvPlanning&) { return value(); }
};


// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPlanningRequest> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPlanning > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPlanningRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvPlanning >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPlanningRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvPlanningRequest> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvPlanning > 
template<>
struct DataType< ::tum_alle_common_msgs::srvPlanningRequest>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvPlanning >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPlanningRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPlanningResponse> should match 
// service_traits::MD5Sum< ::tum_alle_common_msgs::srvPlanning > 
template<>
struct MD5Sum< ::tum_alle_common_msgs::srvPlanningResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tum_alle_common_msgs::srvPlanning >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPlanningResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tum_alle_common_msgs::srvPlanningResponse> should match 
// service_traits::DataType< ::tum_alle_common_msgs::srvPlanning > 
template<>
struct DataType< ::tum_alle_common_msgs::srvPlanningResponse>
{
  static const char* value()
  {
    return DataType< ::tum_alle_common_msgs::srvPlanning >::value();
  }
  static const char* value(const ::tum_alle_common_msgs::srvPlanningResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUM_ALLE_COMMON_MSGS_MESSAGE_SRVPLANNING_H