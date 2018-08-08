; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msgCategorisedSpeech.msg.html

(cl:defclass <msgCategorisedSpeech> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (object
    :reader object
    :initarg :object
    :type cl:string
    :initform ""))
)

(cl:defclass msgCategorisedSpeech (<msgCategorisedSpeech>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgCategorisedSpeech>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgCategorisedSpeech)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msgCategorisedSpeech> is deprecated: use tum_alle_common_msgs-msg:msgCategorisedSpeech instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <msgCategorisedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:name-val is deprecated.  Use tum_alle_common_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <msgCategorisedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:location-val is deprecated.  Use tum_alle_common_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <msgCategorisedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:object-val is deprecated.  Use tum_alle_common_msgs-msg:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgCategorisedSpeech>) ostream)
  "Serializes a message object of type '<msgCategorisedSpeech>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgCategorisedSpeech>) istream)
  "Deserializes a message object of type '<msgCategorisedSpeech>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgCategorisedSpeech>)))
  "Returns string type for a message object of type '<msgCategorisedSpeech>"
  "tum_alle_common_msgs/msgCategorisedSpeech")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgCategorisedSpeech)))
  "Returns string type for a message object of type 'msgCategorisedSpeech"
  "tum_alle_common_msgs/msgCategorisedSpeech")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgCategorisedSpeech>)))
  "Returns md5sum for a message object of type '<msgCategorisedSpeech>"
  "cf1b457a008f8c8620b2e8077ee378e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgCategorisedSpeech)))
  "Returns md5sum for a message object of type 'msgCategorisedSpeech"
  "cf1b457a008f8c8620b2e8077ee378e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgCategorisedSpeech>)))
  "Returns full string definition for message of type '<msgCategorisedSpeech>"
  (cl:format cl:nil "string name~%string location~%string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgCategorisedSpeech)))
  "Returns full string definition for message of type 'msgCategorisedSpeech"
  (cl:format cl:nil "string name~%string location~%string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgCategorisedSpeech>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'location))
     4 (cl:length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgCategorisedSpeech>))
  "Converts a ROS message object to a list"
  (cl:list 'msgCategorisedSpeech
    (cl:cons ':name (name msg))
    (cl:cons ':location (location msg))
    (cl:cons ':object (object msg))
))
