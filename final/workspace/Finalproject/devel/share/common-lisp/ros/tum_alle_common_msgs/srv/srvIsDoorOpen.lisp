; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvIsDoorOpen-request.msg.html

(cl:defclass <srvIsDoorOpen-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvIsDoorOpen-request (<srvIsDoorOpen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvIsDoorOpen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvIsDoorOpen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvIsDoorOpen-request> is deprecated: use tum_alle_common_msgs-srv:srvIsDoorOpen-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvIsDoorOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvIsDoorOpen-request>) ostream)
  "Serializes a message object of type '<srvIsDoorOpen-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvIsDoorOpen-request>) istream)
  "Deserializes a message object of type '<srvIsDoorOpen-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvIsDoorOpen-request>)))
  "Returns string type for a service object of type '<srvIsDoorOpen-request>"
  "tum_alle_common_msgs/srvIsDoorOpenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvIsDoorOpen-request)))
  "Returns string type for a service object of type 'srvIsDoorOpen-request"
  "tum_alle_common_msgs/srvIsDoorOpenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvIsDoorOpen-request>)))
  "Returns md5sum for a message object of type '<srvIsDoorOpen-request>"
  "71761759cbee9765d6f47a7b9585bd82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvIsDoorOpen-request)))
  "Returns md5sum for a message object of type 'srvIsDoorOpen-request"
  "71761759cbee9765d6f47a7b9585bd82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvIsDoorOpen-request>)))
  "Returns full string definition for message of type '<srvIsDoorOpen-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvIsDoorOpen-request)))
  "Returns full string definition for message of type 'srvIsDoorOpen-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvIsDoorOpen-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvIsDoorOpen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvIsDoorOpen-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvIsDoorOpen-response.msg.html

(cl:defclass <srvIsDoorOpen-response> (roslisp-msg-protocol:ros-message)
  ((isOpen
    :reader isOpen
    :initarg :isOpen
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvIsDoorOpen-response (<srvIsDoorOpen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvIsDoorOpen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvIsDoorOpen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvIsDoorOpen-response> is deprecated: use tum_alle_common_msgs-srv:srvIsDoorOpen-response instead.")))

(cl:ensure-generic-function 'isOpen-val :lambda-list '(m))
(cl:defmethod isOpen-val ((m <srvIsDoorOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:isOpen-val is deprecated.  Use tum_alle_common_msgs-srv:isOpen instead.")
  (isOpen m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvIsDoorOpen-response>) ostream)
  "Serializes a message object of type '<srvIsDoorOpen-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isOpen) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvIsDoorOpen-response>) istream)
  "Deserializes a message object of type '<srvIsDoorOpen-response>"
    (cl:setf (cl:slot-value msg 'isOpen) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvIsDoorOpen-response>)))
  "Returns string type for a service object of type '<srvIsDoorOpen-response>"
  "tum_alle_common_msgs/srvIsDoorOpenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvIsDoorOpen-response)))
  "Returns string type for a service object of type 'srvIsDoorOpen-response"
  "tum_alle_common_msgs/srvIsDoorOpenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvIsDoorOpen-response>)))
  "Returns md5sum for a message object of type '<srvIsDoorOpen-response>"
  "71761759cbee9765d6f47a7b9585bd82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvIsDoorOpen-response)))
  "Returns md5sum for a message object of type 'srvIsDoorOpen-response"
  "71761759cbee9765d6f47a7b9585bd82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvIsDoorOpen-response>)))
  "Returns full string definition for message of type '<srvIsDoorOpen-response>"
  (cl:format cl:nil "bool isOpen~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvIsDoorOpen-response)))
  "Returns full string definition for message of type 'srvIsDoorOpen-response"
  (cl:format cl:nil "bool isOpen~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvIsDoorOpen-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvIsDoorOpen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvIsDoorOpen-response
    (cl:cons ':isOpen (isOpen msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvIsDoorOpen)))
  'srvIsDoorOpen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvIsDoorOpen)))
  'srvIsDoorOpen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvIsDoorOpen)))
  "Returns string type for a service object of type '<srvIsDoorOpen>"
  "tum_alle_common_msgs/srvIsDoorOpen")