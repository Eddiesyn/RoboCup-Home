; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvCostmap-request.msg.html

(cl:defclass <srvCostmap-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass srvCostmap-request (<srvCostmap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCostmap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCostmap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCostmap-request> is deprecated: use tum_alle_common_msgs-srv:srvCostmap-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <srvCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:x-val is deprecated.  Use tum_alle_common_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <srvCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:y-val is deprecated.  Use tum_alle_common_msgs-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCostmap-request>) ostream)
  "Serializes a message object of type '<srvCostmap-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCostmap-request>) istream)
  "Deserializes a message object of type '<srvCostmap-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCostmap-request>)))
  "Returns string type for a service object of type '<srvCostmap-request>"
  "tum_alle_common_msgs/srvCostmapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCostmap-request)))
  "Returns string type for a service object of type 'srvCostmap-request"
  "tum_alle_common_msgs/srvCostmapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCostmap-request>)))
  "Returns md5sum for a message object of type '<srvCostmap-request>"
  "7d4bdfdbe811139a2c1fad39419d527f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCostmap-request)))
  "Returns md5sum for a message object of type 'srvCostmap-request"
  "7d4bdfdbe811139a2c1fad39419d527f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCostmap-request>)))
  "Returns full string definition for message of type '<srvCostmap-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCostmap-request)))
  "Returns full string definition for message of type 'srvCostmap-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCostmap-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCostmap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCostmap-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude srvCostmap-response.msg.html

(cl:defclass <srvCostmap-response> (roslisp-msg-protocol:ros-message)
  ((reply
    :reader reply
    :initarg :reply
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvCostmap-response (<srvCostmap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCostmap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCostmap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCostmap-response> is deprecated: use tum_alle_common_msgs-srv:srvCostmap-response instead.")))

(cl:ensure-generic-function 'reply-val :lambda-list '(m))
(cl:defmethod reply-val ((m <srvCostmap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:reply-val is deprecated.  Use tum_alle_common_msgs-srv:reply instead.")
  (reply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCostmap-response>) ostream)
  "Serializes a message object of type '<srvCostmap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reply) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCostmap-response>) istream)
  "Deserializes a message object of type '<srvCostmap-response>"
    (cl:setf (cl:slot-value msg 'reply) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCostmap-response>)))
  "Returns string type for a service object of type '<srvCostmap-response>"
  "tum_alle_common_msgs/srvCostmapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCostmap-response)))
  "Returns string type for a service object of type 'srvCostmap-response"
  "tum_alle_common_msgs/srvCostmapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCostmap-response>)))
  "Returns md5sum for a message object of type '<srvCostmap-response>"
  "7d4bdfdbe811139a2c1fad39419d527f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCostmap-response)))
  "Returns md5sum for a message object of type 'srvCostmap-response"
  "7d4bdfdbe811139a2c1fad39419d527f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCostmap-response>)))
  "Returns full string definition for message of type '<srvCostmap-response>"
  (cl:format cl:nil "bool reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCostmap-response)))
  "Returns full string definition for message of type 'srvCostmap-response"
  (cl:format cl:nil "bool reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCostmap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCostmap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCostmap-response
    (cl:cons ':reply (reply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvCostmap)))
  'srvCostmap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvCostmap)))
  'srvCostmap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCostmap)))
  "Returns string type for a service object of type '<srvCostmap>"
  "tum_alle_common_msgs/srvCostmap")