; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvControlTracker-request.msg.html

(cl:defclass <srvControlTracker-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvControlTracker-request (<srvControlTracker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvControlTracker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvControlTracker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvControlTracker-request> is deprecated: use tum_alle_common_msgs-srv:srvControlTracker-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvControlTracker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvControlTracker-request>) ostream)
  "Serializes a message object of type '<srvControlTracker-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvControlTracker-request>) istream)
  "Deserializes a message object of type '<srvControlTracker-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvControlTracker-request>)))
  "Returns string type for a service object of type '<srvControlTracker-request>"
  "tum_alle_common_msgs/srvControlTrackerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvControlTracker-request)))
  "Returns string type for a service object of type 'srvControlTracker-request"
  "tum_alle_common_msgs/srvControlTrackerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvControlTracker-request>)))
  "Returns md5sum for a message object of type '<srvControlTracker-request>"
  "031d24522d462b2314fd1b6270670dd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvControlTracker-request)))
  "Returns md5sum for a message object of type 'srvControlTracker-request"
  "031d24522d462b2314fd1b6270670dd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvControlTracker-request>)))
  "Returns full string definition for message of type '<srvControlTracker-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvControlTracker-request)))
  "Returns full string definition for message of type 'srvControlTracker-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvControlTracker-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvControlTracker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvControlTracker-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvControlTracker-response.msg.html

(cl:defclass <srvControlTracker-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvControlTracker-response (<srvControlTracker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvControlTracker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvControlTracker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvControlTracker-response> is deprecated: use tum_alle_common_msgs-srv:srvControlTracker-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <srvControlTracker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:success-val is deprecated.  Use tum_alle_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvControlTracker-response>) ostream)
  "Serializes a message object of type '<srvControlTracker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvControlTracker-response>) istream)
  "Deserializes a message object of type '<srvControlTracker-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvControlTracker-response>)))
  "Returns string type for a service object of type '<srvControlTracker-response>"
  "tum_alle_common_msgs/srvControlTrackerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvControlTracker-response)))
  "Returns string type for a service object of type 'srvControlTracker-response"
  "tum_alle_common_msgs/srvControlTrackerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvControlTracker-response>)))
  "Returns md5sum for a message object of type '<srvControlTracker-response>"
  "031d24522d462b2314fd1b6270670dd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvControlTracker-response)))
  "Returns md5sum for a message object of type 'srvControlTracker-response"
  "031d24522d462b2314fd1b6270670dd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvControlTracker-response>)))
  "Returns full string definition for message of type '<srvControlTracker-response>"
  (cl:format cl:nil "bool   success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvControlTracker-response)))
  "Returns full string definition for message of type 'srvControlTracker-response"
  (cl:format cl:nil "bool   success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvControlTracker-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvControlTracker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvControlTracker-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvControlTracker)))
  'srvControlTracker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvControlTracker)))
  'srvControlTracker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvControlTracker)))
  "Returns string type for a service object of type '<srvControlTracker>"
  "tum_alle_common_msgs/srvControlTracker")