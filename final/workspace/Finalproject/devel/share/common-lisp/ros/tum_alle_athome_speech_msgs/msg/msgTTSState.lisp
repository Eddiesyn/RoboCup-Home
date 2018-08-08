; Auto-generated. Do not edit!


(cl:in-package tum_alle_athome_speech_msgs-msg)


;//! \htmlinclude msgTTSState.msg.html

(cl:defclass <msgTTSState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass msgTTSState (<msgTTSState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgTTSState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgTTSState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_athome_speech_msgs-msg:<msgTTSState> is deprecated: use tum_alle_athome_speech_msgs-msg:msgTTSState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <msgTTSState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_athome_speech_msgs-msg:state-val is deprecated.  Use tum_alle_athome_speech_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgTTSState>) ostream)
  "Serializes a message object of type '<msgTTSState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgTTSState>) istream)
  "Deserializes a message object of type '<msgTTSState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgTTSState>)))
  "Returns string type for a message object of type '<msgTTSState>"
  "tum_alle_athome_speech_msgs/msgTTSState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgTTSState)))
  "Returns string type for a message object of type 'msgTTSState"
  "tum_alle_athome_speech_msgs/msgTTSState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgTTSState>)))
  "Returns md5sum for a message object of type '<msgTTSState>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgTTSState)))
  "Returns md5sum for a message object of type 'msgTTSState"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgTTSState>)))
  "Returns full string definition for message of type '<msgTTSState>"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgTTSState)))
  "Returns full string definition for message of type 'msgTTSState"
  (cl:format cl:nil "string state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgTTSState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgTTSState>))
  "Converts a ROS message object to a list"
  (cl:list 'msgTTSState
    (cl:cons ':state (state msg))
))
