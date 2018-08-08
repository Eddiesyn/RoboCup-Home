; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvPlanning-request.msg.html

(cl:defclass <srvPlanning-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (object_general_location
    :reader object_general_location
    :initarg :object_general_location
    :type cl:string
    :initform "")
   (object_specific_location
    :reader object_specific_location
    :initarg :object_specific_location
    :type cl:string
    :initform "")
   (goal_location
    :reader goal_location
    :initarg :goal_location
    :type cl:string
    :initform "")
   (goal_object
    :reader goal_object
    :initarg :goal_object
    :type cl:string
    :initform "")
   (speech_text
    :reader speech_text
    :initarg :speech_text
    :type cl:string
    :initform ""))
)

(cl:defclass srvPlanning-request (<srvPlanning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvPlanning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvPlanning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvPlanning-request> is deprecated: use tum_alle_common_msgs-srv:srvPlanning-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'object_general_location-val :lambda-list '(m))
(cl:defmethod object_general_location-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:object_general_location-val is deprecated.  Use tum_alle_common_msgs-srv:object_general_location instead.")
  (object_general_location m))

(cl:ensure-generic-function 'object_specific_location-val :lambda-list '(m))
(cl:defmethod object_specific_location-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:object_specific_location-val is deprecated.  Use tum_alle_common_msgs-srv:object_specific_location instead.")
  (object_specific_location m))

(cl:ensure-generic-function 'goal_location-val :lambda-list '(m))
(cl:defmethod goal_location-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:goal_location-val is deprecated.  Use tum_alle_common_msgs-srv:goal_location instead.")
  (goal_location m))

(cl:ensure-generic-function 'goal_object-val :lambda-list '(m))
(cl:defmethod goal_object-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:goal_object-val is deprecated.  Use tum_alle_common_msgs-srv:goal_object instead.")
  (goal_object m))

(cl:ensure-generic-function 'speech_text-val :lambda-list '(m))
(cl:defmethod speech_text-val ((m <srvPlanning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:speech_text-val is deprecated.  Use tum_alle_common_msgs-srv:speech_text instead.")
  (speech_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvPlanning-request>) ostream)
  "Serializes a message object of type '<srvPlanning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_general_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_general_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_specific_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_specific_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_object))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speech_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speech_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvPlanning-request>) istream)
  "Deserializes a message object of type '<srvPlanning-request>"
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
      (cl:setf (cl:slot-value msg 'object_general_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_general_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_specific_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_specific_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speech_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speech_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvPlanning-request>)))
  "Returns string type for a service object of type '<srvPlanning-request>"
  "tum_alle_common_msgs/srvPlanningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvPlanning-request)))
  "Returns string type for a service object of type 'srvPlanning-request"
  "tum_alle_common_msgs/srvPlanningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvPlanning-request>)))
  "Returns md5sum for a message object of type '<srvPlanning-request>"
  "4e32a46cd1a62ca71b3f699ad60b447c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvPlanning-request)))
  "Returns md5sum for a message object of type 'srvPlanning-request"
  "4e32a46cd1a62ca71b3f699ad60b447c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvPlanning-request>)))
  "Returns full string definition for message of type '<srvPlanning-request>"
  (cl:format cl:nil "~%string command~%string object_general_location~%string object_specific_location~%string goal_location~%string goal_object~%string speech_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvPlanning-request)))
  "Returns full string definition for message of type 'srvPlanning-request"
  (cl:format cl:nil "~%string command~%string object_general_location~%string object_specific_location~%string goal_location~%string goal_object~%string speech_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvPlanning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'object_general_location))
     4 (cl:length (cl:slot-value msg 'object_specific_location))
     4 (cl:length (cl:slot-value msg 'goal_location))
     4 (cl:length (cl:slot-value msg 'goal_object))
     4 (cl:length (cl:slot-value msg 'speech_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvPlanning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvPlanning-request
    (cl:cons ':command (command msg))
    (cl:cons ':object_general_location (object_general_location msg))
    (cl:cons ':object_specific_location (object_specific_location msg))
    (cl:cons ':goal_location (goal_location msg))
    (cl:cons ':goal_object (goal_object msg))
    (cl:cons ':speech_text (speech_text msg))
))
;//! \htmlinclude srvPlanning-response.msg.html

(cl:defclass <srvPlanning-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass srvPlanning-response (<srvPlanning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvPlanning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvPlanning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvPlanning-response> is deprecated: use tum_alle_common_msgs-srv:srvPlanning-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <srvPlanning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:status-val is deprecated.  Use tum_alle_common_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvPlanning-response>) ostream)
  "Serializes a message object of type '<srvPlanning-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvPlanning-response>) istream)
  "Deserializes a message object of type '<srvPlanning-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvPlanning-response>)))
  "Returns string type for a service object of type '<srvPlanning-response>"
  "tum_alle_common_msgs/srvPlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvPlanning-response)))
  "Returns string type for a service object of type 'srvPlanning-response"
  "tum_alle_common_msgs/srvPlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvPlanning-response>)))
  "Returns md5sum for a message object of type '<srvPlanning-response>"
  "4e32a46cd1a62ca71b3f699ad60b447c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvPlanning-response)))
  "Returns md5sum for a message object of type 'srvPlanning-response"
  "4e32a46cd1a62ca71b3f699ad60b447c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvPlanning-response>)))
  "Returns full string definition for message of type '<srvPlanning-response>"
  (cl:format cl:nil "string status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvPlanning-response)))
  "Returns full string definition for message of type 'srvPlanning-response"
  (cl:format cl:nil "string status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvPlanning-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvPlanning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvPlanning-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvPlanning)))
  'srvPlanning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvPlanning)))
  'srvPlanning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvPlanning)))
  "Returns string type for a service object of type '<srvPlanning>"
  "tum_alle_common_msgs/srvPlanning")