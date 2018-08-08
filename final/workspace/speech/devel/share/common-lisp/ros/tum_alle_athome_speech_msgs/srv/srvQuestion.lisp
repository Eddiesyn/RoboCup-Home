; Auto-generated. Do not edit!


(cl:in-package tum_alle_athome_speech_msgs-srv)


;//! \htmlinclude srvQuestion-request.msg.html

(cl:defclass <srvQuestion-request> (roslisp-msg-protocol:ros-message)
  ((question
    :reader question
    :initarg :question
    :type cl:string
    :initform ""))
)

(cl:defclass srvQuestion-request (<srvQuestion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvQuestion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvQuestion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvQuestion-request> is deprecated: use tum_alle_athome_speech_msgs-srv:srvQuestion-request instead.")))

(cl:ensure-generic-function 'question-val :lambda-list '(m))
(cl:defmethod question-val ((m <srvQuestion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:question-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:question instead.")
  (question m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvQuestion-request>) ostream)
  "Serializes a message object of type '<srvQuestion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'question))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'question))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvQuestion-request>) istream)
  "Deserializes a message object of type '<srvQuestion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'question) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'question) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvQuestion-request>)))
  "Returns string type for a service object of type '<srvQuestion-request>"
  "tum_alle_athome_speech_msgs/srvQuestionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvQuestion-request)))
  "Returns string type for a service object of type 'srvQuestion-request"
  "tum_alle_athome_speech_msgs/srvQuestionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvQuestion-request>)))
  "Returns md5sum for a message object of type '<srvQuestion-request>"
  "5d65eb218b12bd1167b81a6db1b2e25b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvQuestion-request)))
  "Returns md5sum for a message object of type 'srvQuestion-request"
  "5d65eb218b12bd1167b81a6db1b2e25b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvQuestion-request>)))
  "Returns full string definition for message of type '<srvQuestion-request>"
  (cl:format cl:nil "string question~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvQuestion-request)))
  "Returns full string definition for message of type 'srvQuestion-request"
  (cl:format cl:nil "string question~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvQuestion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'question))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvQuestion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvQuestion-request
    (cl:cons ':question (question msg))
))
;//! \htmlinclude srvQuestion-response.msg.html

(cl:defclass <srvQuestion-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass srvQuestion-response (<srvQuestion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvQuestion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvQuestion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvQuestion-response> is deprecated: use tum_alle_athome_speech_msgs-srv:srvQuestion-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <srvQuestion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:answer-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvQuestion-response>) ostream)
  "Serializes a message object of type '<srvQuestion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvQuestion-response>) istream)
  "Deserializes a message object of type '<srvQuestion-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvQuestion-response>)))
  "Returns string type for a service object of type '<srvQuestion-response>"
  "tum_alle_athome_speech_msgs/srvQuestionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvQuestion-response)))
  "Returns string type for a service object of type 'srvQuestion-response"
  "tum_alle_athome_speech_msgs/srvQuestionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvQuestion-response>)))
  "Returns md5sum for a message object of type '<srvQuestion-response>"
  "5d65eb218b12bd1167b81a6db1b2e25b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvQuestion-response)))
  "Returns md5sum for a message object of type 'srvQuestion-response"
  "5d65eb218b12bd1167b81a6db1b2e25b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvQuestion-response>)))
  "Returns full string definition for message of type '<srvQuestion-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvQuestion-response)))
  "Returns full string definition for message of type 'srvQuestion-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvQuestion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvQuestion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvQuestion-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvQuestion)))
  'srvQuestion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvQuestion)))
  'srvQuestion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvQuestion)))
  "Returns string type for a service object of type '<srvQuestion>"
  "tum_alle_athome_speech_msgs/srvQuestion")