// Generated by gencpp from file all_msgs/send_box.msg
// DO NOT EDIT!


#ifndef ALL_MSGS_MESSAGE_SEND_BOX_H
#define ALL_MSGS_MESSAGE_SEND_BOX_H

#include <ros/service_traits.h>


#include <all_msgs/send_boxRequest.h>
#include <all_msgs/send_boxResponse.h>


namespace all_msgs
{

struct send_box
{

typedef send_boxRequest Request;
typedef send_boxResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct send_box
} // namespace all_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::all_msgs::send_box > {
  static const char* value()
  {
    return "70f3f768b0d3c60a6244d5a1ad1bc50b";
  }

  static const char* value(const ::all_msgs::send_box&) { return value(); }
};

template<>
struct DataType< ::all_msgs::send_box > {
  static const char* value()
  {
    return "all_msgs/send_box";
  }

  static const char* value(const ::all_msgs::send_box&) { return value(); }
};


// service_traits::MD5Sum< ::all_msgs::send_boxRequest> should match 
// service_traits::MD5Sum< ::all_msgs::send_box > 
template<>
struct MD5Sum< ::all_msgs::send_boxRequest>
{
  static const char* value()
  {
    return MD5Sum< ::all_msgs::send_box >::value();
  }
  static const char* value(const ::all_msgs::send_boxRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::all_msgs::send_boxRequest> should match 
// service_traits::DataType< ::all_msgs::send_box > 
template<>
struct DataType< ::all_msgs::send_boxRequest>
{
  static const char* value()
  {
    return DataType< ::all_msgs::send_box >::value();
  }
  static const char* value(const ::all_msgs::send_boxRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::all_msgs::send_boxResponse> should match 
// service_traits::MD5Sum< ::all_msgs::send_box > 
template<>
struct MD5Sum< ::all_msgs::send_boxResponse>
{
  static const char* value()
  {
    return MD5Sum< ::all_msgs::send_box >::value();
  }
  static const char* value(const ::all_msgs::send_boxResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::all_msgs::send_boxResponse> should match 
// service_traits::DataType< ::all_msgs::send_box > 
template<>
struct DataType< ::all_msgs::send_boxResponse>
{
  static const char* value()
  {
    return DataType< ::all_msgs::send_box >::value();
  }
  static const char* value(const ::all_msgs::send_boxResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ALL_MSGS_MESSAGE_SEND_BOX_H