; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvStartPlanner-request.msg.html

(cl:defclass <srvStartPlanner-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvStartPlanner-request (<srvStartPlanner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvStartPlanner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvStartPlanner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvStartPlanner-request> is deprecated: use tum_alle_common_msgs-srv:srvStartPlanner-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvStartPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvStartPlanner-request>) ostream)
  "Serializes a message object of type '<srvStartPlanner-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvStartPlanner-request>) istream)
  "Deserializes a message object of type '<srvStartPlanner-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvStartPlanner-request>)))
  "Returns string type for a service object of type '<srvStartPlanner-request>"
  "tum_alle_common_msgs/srvStartPlannerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStartPlanner-request)))
  "Returns string type for a service object of type 'srvStartPlanner-request"
  "tum_alle_common_msgs/srvStartPlannerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvStartPlanner-request>)))
  "Returns md5sum for a message object of type '<srvStartPlanner-request>"
  "51488b07d0aacb6956a0af72c8f1d91b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvStartPlanner-request)))
  "Returns md5sum for a message object of type 'srvStartPlanner-request"
  "51488b07d0aacb6956a0af72c8f1d91b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvStartPlanner-request>)))
  "Returns full string definition for message of type '<srvStartPlanner-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvStartPlanner-request)))
  "Returns full string definition for message of type 'srvStartPlanner-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvStartPlanner-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvStartPlanner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvStartPlanner-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvStartPlanner-response.msg.html

(cl:defclass <srvStartPlanner-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass srvStartPlanner-response (<srvStartPlanner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvStartPlanner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvStartPlanner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvStartPlanner-response> is deprecated: use tum_alle_common_msgs-srv:srvStartPlanner-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <srvStartPlanner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:status-val is deprecated.  Use tum_alle_common_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvStartPlanner-response>) ostream)
  "Serializes a message object of type '<srvStartPlanner-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvStartPlanner-response>) istream)
  "Deserializes a message object of type '<srvStartPlanner-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvStartPlanner-response>)))
  "Returns string type for a service object of type '<srvStartPlanner-response>"
  "tum_alle_common_msgs/srvStartPlannerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStartPlanner-response)))
  "Returns string type for a service object of type 'srvStartPlanner-response"
  "tum_alle_common_msgs/srvStartPlannerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvStartPlanner-response>)))
  "Returns md5sum for a message object of type '<srvStartPlanner-response>"
  "51488b07d0aacb6956a0af72c8f1d91b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvStartPlanner-response)))
  "Returns md5sum for a message object of type 'srvStartPlanner-response"
  "51488b07d0aacb6956a0af72c8f1d91b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvStartPlanner-response>)))
  "Returns full string definition for message of type '<srvStartPlanner-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvStartPlanner-response)))
  "Returns full string definition for message of type 'srvStartPlanner-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvStartPlanner-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvStartPlanner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvStartPlanner-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvStartPlanner)))
  'srvStartPlanner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvStartPlanner)))
  'srvStartPlanner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStartPlanner)))
  "Returns string type for a service object of type '<srvStartPlanner>"
  "tum_alle_common_msgs/srvStartPlanner")