; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvExtractProperty-request.msg.html

(cl:defclass <srvExtractProperty-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (subcommand
    :reader subcommand
    :initarg :subcommand
    :type cl:string
    :initform ""))
)

(cl:defclass srvExtractProperty-request (<srvExtractProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvExtractProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvExtractProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvExtractProperty-request> is deprecated: use tum_alle_common_msgs-srv:srvExtractProperty-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvExtractProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'subcommand-val :lambda-list '(m))
(cl:defmethod subcommand-val ((m <srvExtractProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:subcommand-val is deprecated.  Use tum_alle_common_msgs-srv:subcommand instead.")
  (subcommand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvExtractProperty-request>) ostream)
  "Serializes a message object of type '<srvExtractProperty-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subcommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subcommand))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvExtractProperty-request>) istream)
  "Deserializes a message object of type '<srvExtractProperty-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subcommand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subcommand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvExtractProperty-request>)))
  "Returns string type for a service object of type '<srvExtractProperty-request>"
  "tum_alle_common_msgs/srvExtractPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvExtractProperty-request)))
  "Returns string type for a service object of type 'srvExtractProperty-request"
  "tum_alle_common_msgs/srvExtractPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvExtractProperty-request>)))
  "Returns md5sum for a message object of type '<srvExtractProperty-request>"
  "b253553970eafd667f42fcf9d6384784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvExtractProperty-request)))
  "Returns md5sum for a message object of type 'srvExtractProperty-request"
  "b253553970eafd667f42fcf9d6384784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvExtractProperty-request>)))
  "Returns full string definition for message of type '<srvExtractProperty-request>"
  (cl:format cl:nil "string command~%string subcommand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvExtractProperty-request)))
  "Returns full string definition for message of type 'srvExtractProperty-request"
  (cl:format cl:nil "string command~%string subcommand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvExtractProperty-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'subcommand))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvExtractProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvExtractProperty-request
    (cl:cons ':command (command msg))
    (cl:cons ':subcommand (subcommand msg))
))
;//! \htmlinclude srvExtractProperty-response.msg.html

(cl:defclass <srvExtractProperty-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass srvExtractProperty-response (<srvExtractProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvExtractProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvExtractProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvExtractProperty-response> is deprecated: use tum_alle_common_msgs-srv:srvExtractProperty-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srvExtractProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result-val is deprecated.  Use tum_alle_common_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvExtractProperty-response>) ostream)
  "Serializes a message object of type '<srvExtractProperty-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvExtractProperty-response>) istream)
  "Deserializes a message object of type '<srvExtractProperty-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvExtractProperty-response>)))
  "Returns string type for a service object of type '<srvExtractProperty-response>"
  "tum_alle_common_msgs/srvExtractPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvExtractProperty-response)))
  "Returns string type for a service object of type 'srvExtractProperty-response"
  "tum_alle_common_msgs/srvExtractPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvExtractProperty-response>)))
  "Returns md5sum for a message object of type '<srvExtractProperty-response>"
  "b253553970eafd667f42fcf9d6384784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvExtractProperty-response)))
  "Returns md5sum for a message object of type 'srvExtractProperty-response"
  "b253553970eafd667f42fcf9d6384784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvExtractProperty-response>)))
  "Returns full string definition for message of type '<srvExtractProperty-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvExtractProperty-response)))
  "Returns full string definition for message of type 'srvExtractProperty-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvExtractProperty-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvExtractProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvExtractProperty-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvExtractProperty)))
  'srvExtractProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvExtractProperty)))
  'srvExtractProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvExtractProperty)))
  "Returns string type for a service object of type '<srvExtractProperty>"
  "tum_alle_common_msgs/srvExtractProperty")