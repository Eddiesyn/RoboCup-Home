; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvObjectsClustering-request.msg.html

(cl:defclass <srvObjectsClustering-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:string
    :initform ""))
)

(cl:defclass srvObjectsClustering-request (<srvObjectsClustering-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvObjectsClustering-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvObjectsClustering-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvObjectsClustering-request> is deprecated: use tum_alle_common_msgs-srv:srvObjectsClustering-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <srvObjectsClustering-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:position-val is deprecated.  Use tum_alle_common_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvObjectsClustering-request>) ostream)
  "Serializes a message object of type '<srvObjectsClustering-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvObjectsClustering-request>) istream)
  "Deserializes a message object of type '<srvObjectsClustering-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvObjectsClustering-request>)))
  "Returns string type for a service object of type '<srvObjectsClustering-request>"
  "tum_alle_common_msgs/srvObjectsClusteringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectsClustering-request)))
  "Returns string type for a service object of type 'srvObjectsClustering-request"
  "tum_alle_common_msgs/srvObjectsClusteringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvObjectsClustering-request>)))
  "Returns md5sum for a message object of type '<srvObjectsClustering-request>"
  "bb6e634cebd01083e2c908a49e7e0cc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvObjectsClustering-request)))
  "Returns md5sum for a message object of type 'srvObjectsClustering-request"
  "bb6e634cebd01083e2c908a49e7e0cc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvObjectsClustering-request>)))
  "Returns full string definition for message of type '<srvObjectsClustering-request>"
  (cl:format cl:nil "string position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvObjectsClustering-request)))
  "Returns full string definition for message of type 'srvObjectsClustering-request"
  (cl:format cl:nil "string position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvObjectsClustering-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvObjectsClustering-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvObjectsClustering-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude srvObjectsClustering-response.msg.html

(cl:defclass <srvObjectsClustering-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass srvObjectsClustering-response (<srvObjectsClustering-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvObjectsClustering-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvObjectsClustering-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvObjectsClustering-response> is deprecated: use tum_alle_common_msgs-srv:srvObjectsClustering-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <srvObjectsClustering-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:success-val is deprecated.  Use tum_alle_common_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <srvObjectsClustering-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:message-val is deprecated.  Use tum_alle_common_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvObjectsClustering-response>) ostream)
  "Serializes a message object of type '<srvObjectsClustering-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvObjectsClustering-response>) istream)
  "Deserializes a message object of type '<srvObjectsClustering-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvObjectsClustering-response>)))
  "Returns string type for a service object of type '<srvObjectsClustering-response>"
  "tum_alle_common_msgs/srvObjectsClusteringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectsClustering-response)))
  "Returns string type for a service object of type 'srvObjectsClustering-response"
  "tum_alle_common_msgs/srvObjectsClusteringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvObjectsClustering-response>)))
  "Returns md5sum for a message object of type '<srvObjectsClustering-response>"
  "bb6e634cebd01083e2c908a49e7e0cc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvObjectsClustering-response)))
  "Returns md5sum for a message object of type 'srvObjectsClustering-response"
  "bb6e634cebd01083e2c908a49e7e0cc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvObjectsClustering-response>)))
  "Returns full string definition for message of type '<srvObjectsClustering-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvObjectsClustering-response)))
  "Returns full string definition for message of type 'srvObjectsClustering-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvObjectsClustering-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvObjectsClustering-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvObjectsClustering-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvObjectsClustering)))
  'srvObjectsClustering-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvObjectsClustering)))
  'srvObjectsClustering-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectsClustering)))
  "Returns string type for a service object of type '<srvObjectsClustering>"
  "tum_alle_common_msgs/srvObjectsClustering")