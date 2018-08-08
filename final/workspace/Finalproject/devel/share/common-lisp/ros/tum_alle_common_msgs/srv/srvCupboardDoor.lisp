; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvCupboardDoor-request.msg.html

(cl:defclass <srvCupboardDoor-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvCupboardDoor-request (<srvCupboardDoor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCupboardDoor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCupboardDoor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCupboardDoor-request> is deprecated: use tum_alle_common_msgs-srv:srvCupboardDoor-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvCupboardDoor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCupboardDoor-request>) ostream)
  "Serializes a message object of type '<srvCupboardDoor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCupboardDoor-request>) istream)
  "Deserializes a message object of type '<srvCupboardDoor-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCupboardDoor-request>)))
  "Returns string type for a service object of type '<srvCupboardDoor-request>"
  "tum_alle_common_msgs/srvCupboardDoorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardDoor-request)))
  "Returns string type for a service object of type 'srvCupboardDoor-request"
  "tum_alle_common_msgs/srvCupboardDoorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCupboardDoor-request>)))
  "Returns md5sum for a message object of type '<srvCupboardDoor-request>"
  "ccf14741459eac4d4f2f5a05c6840a9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCupboardDoor-request)))
  "Returns md5sum for a message object of type 'srvCupboardDoor-request"
  "ccf14741459eac4d4f2f5a05c6840a9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCupboardDoor-request>)))
  "Returns full string definition for message of type '<srvCupboardDoor-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCupboardDoor-request)))
  "Returns full string definition for message of type 'srvCupboardDoor-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCupboardDoor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCupboardDoor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCupboardDoor-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvCupboardDoor-response.msg.html

(cl:defclass <srvCupboardDoor-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:string
    :initform "")
   (door_detected
    :reader door_detected
    :initarg :door_detected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvCupboardDoor-response (<srvCupboardDoor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCupboardDoor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCupboardDoor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCupboardDoor-response> is deprecated: use tum_alle_common_msgs-srv:srvCupboardDoor-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <srvCupboardDoor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:position-val is deprecated.  Use tum_alle_common_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'door_detected-val :lambda-list '(m))
(cl:defmethod door_detected-val ((m <srvCupboardDoor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:door_detected-val is deprecated.  Use tum_alle_common_msgs-srv:door_detected instead.")
  (door_detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCupboardDoor-response>) ostream)
  "Serializes a message object of type '<srvCupboardDoor-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'door_detected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCupboardDoor-response>) istream)
  "Deserializes a message object of type '<srvCupboardDoor-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'door_detected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCupboardDoor-response>)))
  "Returns string type for a service object of type '<srvCupboardDoor-response>"
  "tum_alle_common_msgs/srvCupboardDoorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardDoor-response)))
  "Returns string type for a service object of type 'srvCupboardDoor-response"
  "tum_alle_common_msgs/srvCupboardDoorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCupboardDoor-response>)))
  "Returns md5sum for a message object of type '<srvCupboardDoor-response>"
  "ccf14741459eac4d4f2f5a05c6840a9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCupboardDoor-response)))
  "Returns md5sum for a message object of type 'srvCupboardDoor-response"
  "ccf14741459eac4d4f2f5a05c6840a9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCupboardDoor-response>)))
  "Returns full string definition for message of type '<srvCupboardDoor-response>"
  (cl:format cl:nil "string position~%bool   door_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCupboardDoor-response)))
  "Returns full string definition for message of type 'srvCupboardDoor-response"
  (cl:format cl:nil "string position~%bool   door_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCupboardDoor-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'position))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCupboardDoor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCupboardDoor-response
    (cl:cons ':position (position msg))
    (cl:cons ':door_detected (door_detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvCupboardDoor)))
  'srvCupboardDoor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvCupboardDoor)))
  'srvCupboardDoor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardDoor)))
  "Returns string type for a service object of type '<srvCupboardDoor>"
  "tum_alle_common_msgs/srvCupboardDoor")