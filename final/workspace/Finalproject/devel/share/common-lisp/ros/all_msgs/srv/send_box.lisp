; Auto-generated. Do not edit!


(cl:in-package all_msgs-srv)


;//! \htmlinclude send_box-request.msg.html

(cl:defclass <send_box-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0))
)

(cl:defclass send_box-request (<send_box-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_box-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_box-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_box-request> is deprecated: use all_msgs-srv:send_box-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <send_box-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:id-val is deprecated.  Use all_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <send_box-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:x-val is deprecated.  Use all_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <send_box-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:y-val is deprecated.  Use all_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <send_box-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:height-val is deprecated.  Use all_msgs-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <send_box-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:width-val is deprecated.  Use all_msgs-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_box-request>) ostream)
  "Serializes a message object of type '<send_box-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_box-request>) istream)
  "Deserializes a message object of type '<send_box-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_box-request>)))
  "Returns string type for a service object of type '<send_box-request>"
  "all_msgs/send_boxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_box-request)))
  "Returns string type for a service object of type 'send_box-request"
  "all_msgs/send_boxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_box-request>)))
  "Returns md5sum for a message object of type '<send_box-request>"
  "70f3f768b0d3c60a6244d5a1ad1bc50b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_box-request)))
  "Returns md5sum for a message object of type 'send_box-request"
  "70f3f768b0d3c60a6244d5a1ad1bc50b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_box-request>)))
  "Returns full string definition for message of type '<send_box-request>"
  (cl:format cl:nil "string id~%int32 x~%int32 y~%int32 height~%int32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_box-request)))
  "Returns full string definition for message of type 'send_box-request"
  (cl:format cl:nil "string id~%int32 x~%int32 y~%int32 height~%int32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_box-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_box-request>))
  "Converts a ROS message object to a list"
  (cl:list 'send_box-request
    (cl:cons ':id (id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
))
;//! \htmlinclude send_box-response.msg.html

(cl:defclass <send_box-response> (roslisp-msg-protocol:ros-message)
  ((reply
    :reader reply
    :initarg :reply
    :type cl:integer
    :initform 0))
)

(cl:defclass send_box-response (<send_box-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_box-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_box-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_box-response> is deprecated: use all_msgs-srv:send_box-response instead.")))

(cl:ensure-generic-function 'reply-val :lambda-list '(m))
(cl:defmethod reply-val ((m <send_box-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:reply-val is deprecated.  Use all_msgs-srv:reply instead.")
  (reply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_box-response>) ostream)
  "Serializes a message object of type '<send_box-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_box-response>) istream)
  "Deserializes a message object of type '<send_box-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_box-response>)))
  "Returns string type for a service object of type '<send_box-response>"
  "all_msgs/send_boxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_box-response)))
  "Returns string type for a service object of type 'send_box-response"
  "all_msgs/send_boxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_box-response>)))
  "Returns md5sum for a message object of type '<send_box-response>"
  "70f3f768b0d3c60a6244d5a1ad1bc50b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_box-response)))
  "Returns md5sum for a message object of type 'send_box-response"
  "70f3f768b0d3c60a6244d5a1ad1bc50b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_box-response>)))
  "Returns full string definition for message of type '<send_box-response>"
  (cl:format cl:nil "int64 reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_box-response)))
  "Returns full string definition for message of type 'send_box-response"
  (cl:format cl:nil "int64 reply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_box-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_box-response>))
  "Converts a ROS message object to a list"
  (cl:list 'send_box-response
    (cl:cons ':reply (reply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'send_box)))
  'send_box-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'send_box)))
  'send_box-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_box)))
  "Returns string type for a service object of type '<send_box>"
  "all_msgs/send_box")