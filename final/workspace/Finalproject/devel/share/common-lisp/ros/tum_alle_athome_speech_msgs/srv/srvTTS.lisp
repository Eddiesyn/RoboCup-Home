; Auto-generated. Do not edit!


(cl:in-package tum_alle_athome_speech_msgs-srv)


;//! \htmlinclude srvTTS-request.msg.html

(cl:defclass <srvTTS-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass srvTTS-request (<srvTTS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvTTS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvTTS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvTTS-request> is deprecated: use tum_alle_athome_speech_msgs-srv:srvTTS-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <srvTTS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:text-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvTTS-request>) ostream)
  "Serializes a message object of type '<srvTTS-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvTTS-request>) istream)
  "Deserializes a message object of type '<srvTTS-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvTTS-request>)))
  "Returns string type for a service object of type '<srvTTS-request>"
  "tum_alle_athome_speech_msgs/srvTTSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTTS-request)))
  "Returns string type for a service object of type 'srvTTS-request"
  "tum_alle_athome_speech_msgs/srvTTSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvTTS-request>)))
  "Returns md5sum for a message object of type '<srvTTS-request>"
  "d4dde95938bb106b3c23e1eff4e5e29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvTTS-request)))
  "Returns md5sum for a message object of type 'srvTTS-request"
  "d4dde95938bb106b3c23e1eff4e5e29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvTTS-request>)))
  "Returns full string definition for message of type '<srvTTS-request>"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvTTS-request)))
  "Returns full string definition for message of type 'srvTTS-request"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvTTS-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvTTS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvTTS-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude srvTTS-response.msg.html

(cl:defclass <srvTTS-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvTTS-response (<srvTTS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvTTS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvTTS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-srv:<srvTTS-response> is deprecated: use tum_alle_athome_speech_msgs-srv:srvTTS-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srvTTS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-srv:result-val is deprecated.  Use tum_alle_athome_speech_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvTTS-response>) ostream)
  "Serializes a message object of type '<srvTTS-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvTTS-response>) istream)
  "Deserializes a message object of type '<srvTTS-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvTTS-response>)))
  "Returns string type for a service object of type '<srvTTS-response>"
  "tum_alle_athome_speech_msgs/srvTTSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTTS-response)))
  "Returns string type for a service object of type 'srvTTS-response"
  "tum_alle_athome_speech_msgs/srvTTSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvTTS-response>)))
  "Returns md5sum for a message object of type '<srvTTS-response>"
  "d4dde95938bb106b3c23e1eff4e5e29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvTTS-response)))
  "Returns md5sum for a message object of type 'srvTTS-response"
  "d4dde95938bb106b3c23e1eff4e5e29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvTTS-response>)))
  "Returns full string definition for message of type '<srvTTS-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvTTS-response)))
  "Returns full string definition for message of type 'srvTTS-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvTTS-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvTTS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvTTS-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvTTS)))
  'srvTTS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvTTS)))
  'srvTTS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTTS)))
  "Returns string type for a service object of type '<srvTTS>"
  "tum_alle_athome_speech_msgs/srvTTS")