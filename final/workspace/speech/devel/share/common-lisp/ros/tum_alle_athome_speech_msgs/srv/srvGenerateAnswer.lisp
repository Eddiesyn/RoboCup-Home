; Auto-generated. Do not edit!


(cl:in-package tum_alle_athome_speech_msgs-srv)


;//! \htmlinclude srvGenerateAnswer-request.msg.html

(cl:defclass <srvGenerateAnswer-request> (roslisp-msg-protocol:ros-message)
  ((question
    :reader question
    :initarg :question
    :type cl:string
    :initform "")
   (intention
    :reader intention
    :initarg :intention
    :type cl:string
    :initform ""))
)

(cl:defclass srvGenerateAnswer-request (<srvGenerateAnswer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGenerateAnswer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGenerateAnswer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvGenerateAnswer-request> is deprecated: use tum_alle_athome_speech_msgs-srv:srvGenerateAnswer-request instead.")))

(cl:ensure-generic-function 'question-val :lambda-list '(m))
(cl:defmethod question-val ((m <srvGenerateAnswer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:question-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:question instead.")
  (question m))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <srvGenerateAnswer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:intention-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:intention instead.")
  (intention m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGenerateAnswer-request>) ostream)
  "Serializes a message object of type '<srvGenerateAnswer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'question))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'question))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intention))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGenerateAnswer-request>) istream)
  "Deserializes a message object of type '<srvGenerateAnswer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'question) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'question) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intention) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intention) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGenerateAnswer-request>)))
  "Returns string type for a service object of type '<srvGenerateAnswer-request>"
  "tum_alle_athome_speech_msgs/srvGenerateAnswerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGenerateAnswer-request)))
  "Returns string type for a service object of type 'srvGenerateAnswer-request"
  "tum_alle_athome_speech_msgs/srvGenerateAnswerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGenerateAnswer-request>)))
  "Returns md5sum for a message object of type '<srvGenerateAnswer-request>"
  "20a4052d904bff6ea1be92753e941f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGenerateAnswer-request)))
  "Returns md5sum for a message object of type 'srvGenerateAnswer-request"
  "20a4052d904bff6ea1be92753e941f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGenerateAnswer-request>)))
  "Returns full string definition for message of type '<srvGenerateAnswer-request>"
  (cl:format cl:nil "string question~%string intention~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGenerateAnswer-request)))
  "Returns full string definition for message of type 'srvGenerateAnswer-request"
  (cl:format cl:nil "string question~%string intention~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGenerateAnswer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'question))
     4 (cl:length (cl:slot-value msg 'intention))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGenerateAnswer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGenerateAnswer-request
    (cl:cons ':question (question msg))
    (cl:cons ':intention (intention msg))
))
;//! \htmlinclude srvGenerateAnswer-response.msg.html

(cl:defclass <srvGenerateAnswer-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass srvGenerateAnswer-response (<srvGenerateAnswer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGenerateAnswer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGenerateAnswer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvGenerateAnswer-response> is deprecated: use tum_alle_athome_speech_msgs-srv:srvGenerateAnswer-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <srvGenerateAnswer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:answer-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGenerateAnswer-response>) ostream)
  "Serializes a message object of type '<srvGenerateAnswer-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGenerateAnswer-response>) istream)
  "Deserializes a message object of type '<srvGenerateAnswer-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGenerateAnswer-response>)))
  "Returns string type for a service object of type '<srvGenerateAnswer-response>"
  "tum_alle_athome_speech_msgs/srvGenerateAnswerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGenerateAnswer-response)))
  "Returns string type for a service object of type 'srvGenerateAnswer-response"
  "tum_alle_athome_speech_msgs/srvGenerateAnswerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGenerateAnswer-response>)))
  "Returns md5sum for a message object of type '<srvGenerateAnswer-response>"
  "20a4052d904bff6ea1be92753e941f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGenerateAnswer-response)))
  "Returns md5sum for a message object of type 'srvGenerateAnswer-response"
  "20a4052d904bff6ea1be92753e941f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGenerateAnswer-response>)))
  "Returns full string definition for message of type '<srvGenerateAnswer-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGenerateAnswer-response)))
  "Returns full string definition for message of type 'srvGenerateAnswer-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGenerateAnswer-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGenerateAnswer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGenerateAnswer-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvGenerateAnswer)))
  'srvGenerateAnswer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvGenerateAnswer)))
  'srvGenerateAnswer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGenerateAnswer)))
  "Returns string type for a service object of type '<srvGenerateAnswer>"
  "tum_alle_athome_speech_msgs/srvGenerateAnswer")