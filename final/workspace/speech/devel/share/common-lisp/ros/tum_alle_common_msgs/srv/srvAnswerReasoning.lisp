; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvAnswerReasoning-request.msg.html

(cl:defclass <srvAnswerReasoning-request> (roslisp-msg-protocol:ros-message)
  ((intent
    :reader intent
    :initarg :intent
    :type cl:string
    :initform "")
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass srvAnswerReasoning-request (<srvAnswerReasoning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvAnswerReasoning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvAnswerReasoning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvAnswerReasoning-request> is deprecated: use tum_alle_common_msgs-srv:srvAnswerReasoning-request instead.")))

(cl:ensure-generic-function 'intent-val :lambda-list '(m))
(cl:defmethod intent-val ((m <srvAnswerReasoning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:intent-val is deprecated.  Use tum_alle_common_msgs-srv:intent instead.")
  (intent m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <srvAnswerReasoning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:properties-val is deprecated.  Use tum_alle_common_msgs-srv:properties instead.")
  (properties m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <srvAnswerReasoning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:values-val is deprecated.  Use tum_alle_common_msgs-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvAnswerReasoning-request>) ostream)
  "Serializes a message object of type '<srvAnswerReasoning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intent))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'properties))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvAnswerReasoning-request>) istream)
  "Deserializes a message object of type '<srvAnswerReasoning-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intent) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intent) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvAnswerReasoning-request>)))
  "Returns string type for a service object of type '<srvAnswerReasoning-request>"
  "tum_alle_common_msgs/srvAnswerReasoningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvAnswerReasoning-request)))
  "Returns string type for a service object of type 'srvAnswerReasoning-request"
  "tum_alle_common_msgs/srvAnswerReasoningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvAnswerReasoning-request>)))
  "Returns md5sum for a message object of type '<srvAnswerReasoning-request>"
  "678dbec11527080c5219c3331bbb3138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvAnswerReasoning-request)))
  "Returns md5sum for a message object of type 'srvAnswerReasoning-request"
  "678dbec11527080c5219c3331bbb3138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvAnswerReasoning-request>)))
  "Returns full string definition for message of type '<srvAnswerReasoning-request>"
  (cl:format cl:nil "string intent~%string[] properties~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvAnswerReasoning-request)))
  "Returns full string definition for message of type 'srvAnswerReasoning-request"
  (cl:format cl:nil "string intent~%string[] properties~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvAnswerReasoning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'intent))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvAnswerReasoning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvAnswerReasoning-request
    (cl:cons ':intent (intent msg))
    (cl:cons ':properties (properties msg))
    (cl:cons ':values (values msg))
))
;//! \htmlinclude srvAnswerReasoning-response.msg.html

(cl:defclass <srvAnswerReasoning-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass srvAnswerReasoning-response (<srvAnswerReasoning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvAnswerReasoning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvAnswerReasoning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvAnswerReasoning-response> is deprecated: use tum_alle_common_msgs-srv:srvAnswerReasoning-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <srvAnswerReasoning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:answer-val is deprecated.  Use tum_alle_common_msgs-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvAnswerReasoning-response>) ostream)
  "Serializes a message object of type '<srvAnswerReasoning-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvAnswerReasoning-response>) istream)
  "Deserializes a message object of type '<srvAnswerReasoning-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvAnswerReasoning-response>)))
  "Returns string type for a service object of type '<srvAnswerReasoning-response>"
  "tum_alle_common_msgs/srvAnswerReasoningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvAnswerReasoning-response)))
  "Returns string type for a service object of type 'srvAnswerReasoning-response"
  "tum_alle_common_msgs/srvAnswerReasoningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvAnswerReasoning-response>)))
  "Returns md5sum for a message object of type '<srvAnswerReasoning-response>"
  "678dbec11527080c5219c3331bbb3138")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvAnswerReasoning-response)))
  "Returns md5sum for a message object of type 'srvAnswerReasoning-response"
  "678dbec11527080c5219c3331bbb3138")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvAnswerReasoning-response>)))
  "Returns full string definition for message of type '<srvAnswerReasoning-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvAnswerReasoning-response)))
  "Returns full string definition for message of type 'srvAnswerReasoning-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvAnswerReasoning-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvAnswerReasoning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvAnswerReasoning-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvAnswerReasoning)))
  'srvAnswerReasoning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvAnswerReasoning)))
  'srvAnswerReasoning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvAnswerReasoning)))
  "Returns string type for a service object of type '<srvAnswerReasoning>"
  "tum_alle_common_msgs/srvAnswerReasoning")