; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvSpeechRecognition-request.msg.html

(cl:defclass <srvSpeechRecognition-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvSpeechRecognition-request (<srvSpeechRecognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvSpeechRecognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvSpeechRecognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvSpeechRecognition-request> is deprecated: use tum_alle_common_msgs-srv:srvSpeechRecognition-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <srvSpeechRecognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:action-val is deprecated.  Use tum_alle_common_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvSpeechRecognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvSpeechRecognition-request>) ostream)
  "Serializes a message object of type '<srvSpeechRecognition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvSpeechRecognition-request>) istream)
  "Deserializes a message object of type '<srvSpeechRecognition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvSpeechRecognition-request>)))
  "Returns string type for a service object of type '<srvSpeechRecognition-request>"
  "tum_alle_common_msgs/srvSpeechRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSpeechRecognition-request)))
  "Returns string type for a service object of type 'srvSpeechRecognition-request"
  "tum_alle_common_msgs/srvSpeechRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvSpeechRecognition-request>)))
  "Returns md5sum for a message object of type '<srvSpeechRecognition-request>"
  "987dba923878aea186caeaaff32873b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvSpeechRecognition-request)))
  "Returns md5sum for a message object of type 'srvSpeechRecognition-request"
  "987dba923878aea186caeaaff32873b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvSpeechRecognition-request>)))
  "Returns full string definition for message of type '<srvSpeechRecognition-request>"
  (cl:format cl:nil "~%~%string action~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvSpeechRecognition-request)))
  "Returns full string definition for message of type 'srvSpeechRecognition-request"
  (cl:format cl:nil "~%~%string action~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvSpeechRecognition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvSpeechRecognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvSpeechRecognition-request
    (cl:cons ':action (action msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvSpeechRecognition-response.msg.html

(cl:defclass <srvSpeechRecognition-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvSpeechRecognition-response (<srvSpeechRecognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvSpeechRecognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvSpeechRecognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvSpeechRecognition-response> is deprecated: use tum_alle_common_msgs-srv:srvSpeechRecognition-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <srvSpeechRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:response-val is deprecated.  Use tum_alle_common_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvSpeechRecognition-response>) ostream)
  "Serializes a message object of type '<srvSpeechRecognition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvSpeechRecognition-response>) istream)
  "Deserializes a message object of type '<srvSpeechRecognition-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvSpeechRecognition-response>)))
  "Returns string type for a service object of type '<srvSpeechRecognition-response>"
  "tum_alle_common_msgs/srvSpeechRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSpeechRecognition-response)))
  "Returns string type for a service object of type 'srvSpeechRecognition-response"
  "tum_alle_common_msgs/srvSpeechRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvSpeechRecognition-response>)))
  "Returns md5sum for a message object of type '<srvSpeechRecognition-response>"
  "987dba923878aea186caeaaff32873b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvSpeechRecognition-response)))
  "Returns md5sum for a message object of type 'srvSpeechRecognition-response"
  "987dba923878aea186caeaaff32873b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvSpeechRecognition-response>)))
  "Returns full string definition for message of type '<srvSpeechRecognition-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvSpeechRecognition-response)))
  "Returns full string definition for message of type 'srvSpeechRecognition-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvSpeechRecognition-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvSpeechRecognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvSpeechRecognition-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvSpeechRecognition)))
  'srvSpeechRecognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvSpeechRecognition)))
  'srvSpeechRecognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSpeechRecognition)))
  "Returns string type for a service object of type '<srvSpeechRecognition>"
  "tum_alle_common_msgs/srvSpeechRecognition")