; Auto-generated. Do not edit!


(cl:in-package perception_msgs-srv)


;//! \htmlinclude send_flags-request.msg.html

(cl:defclass <send_flags-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass send_flags-request (<send_flags-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_flags-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_flags-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<send_flags-request> is deprecated: use perception_msgs-srv:send_flags-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <send_flags-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:flag-val is deprecated.  Use perception_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_flags-request>) ostream)
  "Serializes a message object of type '<send_flags-request>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_flags-request>) istream)
  "Deserializes a message object of type '<send_flags-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_flags-request>)))
  "Returns string type for a service object of type '<send_flags-request>"
  "perception_msgs/send_flagsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_flags-request)))
  "Returns string type for a service object of type 'send_flags-request"
  "perception_msgs/send_flagsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_flags-request>)))
  "Returns md5sum for a message object of type '<send_flags-request>"
  "020bdbc33a7ee6b93f149ccfbb819f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_flags-request)))
  "Returns md5sum for a message object of type 'send_flags-request"
  "020bdbc33a7ee6b93f149ccfbb819f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_flags-request>)))
  "Returns full string definition for message of type '<send_flags-request>"
  (cl:format cl:nil "~%int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_flags-request)))
  "Returns full string definition for message of type 'send_flags-request"
  (cl:format cl:nil "~%int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_flags-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_flags-request>))
  "Converts a ROS message object to a list"
  (cl:list 'send_flags-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude send_flags-response.msg.html

(cl:defclass <send_flags-response> (roslisp-msg-protocol:ros-message)
  ((reply
    :reader reply
    :initarg :reply
    :type cl:integer
    :initform 0))
)

(cl:defclass send_flags-response (<send_flags-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_flags-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_flags-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<send_flags-response> is deprecated: use perception_msgs-srv:send_flags-response instead.")))

(cl:ensure-generic-function 'reply-val :lambda-list '(m))
(cl:defmethod reply-val ((m <send_flags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:reply-val is deprecated.  Use perception_msgs-srv:reply instead.")
  (reply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_flags-response>) ostream)
  "Serializes a message object of type '<send_flags-response>"
  (cl:let* ((signed (cl:slot-value msg 'reply)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_flags-response>) istream)
  "Deserializes a message object of type '<send_flags-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reply) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_flags-response>)))
  "Returns string type for a service object of type '<send_flags-response>"
  "perception_msgs/send_flagsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_flags-response)))
  "Returns string type for a service object of type 'send_flags-response"
  "perception_msgs/send_flagsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_flags-response>)))
  "Returns md5sum for a message object of type '<send_flags-response>"
  "020bdbc33a7ee6b93f149ccfbb819f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_flags-response)))
  "Returns md5sum for a message object of type 'send_flags-response"
  "020bdbc33a7ee6b93f149ccfbb819f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_flags-response>)))
  "Returns full string definition for message of type '<send_flags-response>"
  (cl:format cl:nil "~%int64 reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_flags-response)))
  "Returns full string definition for message of type 'send_flags-response"
  (cl:format cl:nil "~%int64 reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_flags-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_flags-response>))
  "Converts a ROS message object to a list"
  (cl:list 'send_flags-response
    (cl:cons ':reply (reply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'send_flags)))
  'send_flags-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'send_flags)))
  'send_flags-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_flags)))
  "Returns string type for a service object of type '<send_flags>"
  "perception_msgs/send_flags")