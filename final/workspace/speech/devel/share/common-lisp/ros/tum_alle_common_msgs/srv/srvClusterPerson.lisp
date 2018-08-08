; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvClusterPerson-request.msg.html

(cl:defclass <srvClusterPerson-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (size
    :reader size
    :initarg :size
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass srvClusterPerson-request (<srvClusterPerson-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvClusterPerson-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvClusterPerson-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvClusterPerson-request> is deprecated: use tum_alle_common_msgs-srv:srvClusterPerson-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <srvClusterPerson-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pos-val is deprecated.  Use tum_alle_common_msgs-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <srvClusterPerson-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:size-val is deprecated.  Use tum_alle_common_msgs-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvClusterPerson-request>) ostream)
  "Serializes a message object of type '<srvClusterPerson-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvClusterPerson-request>) istream)
  "Deserializes a message object of type '<srvClusterPerson-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvClusterPerson-request>)))
  "Returns string type for a service object of type '<srvClusterPerson-request>"
  "tum_alle_common_msgs/srvClusterPersonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvClusterPerson-request)))
  "Returns string type for a service object of type 'srvClusterPerson-request"
  "tum_alle_common_msgs/srvClusterPersonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvClusterPerson-request>)))
  "Returns md5sum for a message object of type '<srvClusterPerson-request>"
  "027335564df029fa5d68697960ac5d29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvClusterPerson-request)))
  "Returns md5sum for a message object of type 'srvClusterPerson-request"
  "027335564df029fa5d68697960ac5d29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvClusterPerson-request>)))
  "Returns full string definition for message of type '<srvClusterPerson-request>"
  (cl:format cl:nil "geometry_msgs/Point   pos~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvClusterPerson-request)))
  "Returns full string definition for message of type 'srvClusterPerson-request"
  (cl:format cl:nil "geometry_msgs/Point   pos~%geometry_msgs/Vector3 size~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvClusterPerson-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvClusterPerson-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvClusterPerson-request
    (cl:cons ':pos (pos msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude srvClusterPerson-response.msg.html

(cl:defclass <srvClusterPerson-response> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass srvClusterPerson-response (<srvClusterPerson-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvClusterPerson-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvClusterPerson-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvClusterPerson-response> is deprecated: use tum_alle_common_msgs-srv:srvClusterPerson-response instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <srvClusterPerson-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pos-val is deprecated.  Use tum_alle_common_msgs-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvClusterPerson-response>) ostream)
  "Serializes a message object of type '<srvClusterPerson-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvClusterPerson-response>) istream)
  "Deserializes a message object of type '<srvClusterPerson-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvClusterPerson-response>)))
  "Returns string type for a service object of type '<srvClusterPerson-response>"
  "tum_alle_common_msgs/srvClusterPersonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvClusterPerson-response)))
  "Returns string type for a service object of type 'srvClusterPerson-response"
  "tum_alle_common_msgs/srvClusterPersonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvClusterPerson-response>)))
  "Returns md5sum for a message object of type '<srvClusterPerson-response>"
  "027335564df029fa5d68697960ac5d29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvClusterPerson-response)))
  "Returns md5sum for a message object of type 'srvClusterPerson-response"
  "027335564df029fa5d68697960ac5d29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvClusterPerson-response>)))
  "Returns full string definition for message of type '<srvClusterPerson-response>"
  (cl:format cl:nil "geometry_msgs/Point   pos~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvClusterPerson-response)))
  "Returns full string definition for message of type 'srvClusterPerson-response"
  (cl:format cl:nil "geometry_msgs/Point   pos~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvClusterPerson-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvClusterPerson-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvClusterPerson-response
    (cl:cons ':pos (pos msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvClusterPerson)))
  'srvClusterPerson-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvClusterPerson)))
  'srvClusterPerson-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvClusterPerson)))
  "Returns string type for a service object of type '<srvClusterPerson>"
  "tum_alle_common_msgs/srvClusterPerson")