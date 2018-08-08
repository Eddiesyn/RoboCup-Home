; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msgHotwordCommand.msg.html

(cl:defclass <msgHotwordCommand> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass msgHotwordCommand (<msgHotwordCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgHotwordCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgHotwordCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msgHotwordCommand> is deprecated: use tum_alle_common_msgs-msg:msgHotwordCommand instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <msgHotwordCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:command-val is deprecated.  Use tum_alle_common_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgHotwordCommand>) ostream)
  "Serializes a message object of type '<msgHotwordCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgHotwordCommand>) istream)
  "Deserializes a message object of type '<msgHotwordCommand>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgHotwordCommand>)))
  "Returns string type for a message object of type '<msgHotwordCommand>"
  "tum_alle_common_msgs/msgHotwordCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgHotwordCommand)))
  "Returns string type for a message object of type 'msgHotwordCommand"
  "tum_alle_common_msgs/msgHotwordCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgHotwordCommand>)))
  "Returns md5sum for a message object of type '<msgHotwordCommand>"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgHotwordCommand)))
  "Returns md5sum for a message object of type 'msgHotwordCommand"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgHotwordCommand>)))
  "Returns full string definition for message of type '<msgHotwordCommand>"
  (cl:format cl:nil "# Contains the last hotword command recognised~%# By tum_alle_athome_speech_hotword published at:~%# \"/hotword_command\"~%# the command will be recognised when saying:~%# \"Tiago $COMMAND\", with command having the possible values of:~%# say, follow, bring, move, start, wait, move~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgHotwordCommand)))
  "Returns full string definition for message of type 'msgHotwordCommand"
  (cl:format cl:nil "# Contains the last hotword command recognised~%# By tum_alle_athome_speech_hotword published at:~%# \"/hotword_command\"~%# the command will be recognised when saying:~%# \"Tiago $COMMAND\", with command having the possible values of:~%# say, follow, bring, move, start, wait, move~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgHotwordCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgHotwordCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'msgHotwordCommand
    (cl:cons ':command (command msg))
))
