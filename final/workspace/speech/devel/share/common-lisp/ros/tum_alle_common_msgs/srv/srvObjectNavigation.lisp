; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvObjectNavigation-request.msg.html

(cl:defclass <srvObjectNavigation-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform ""))
)

(cl:defclass srvObjectNavigation-request (<srvObjectNavigation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvObjectNavigation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvObjectNavigation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvObjectNavigation-request> is deprecated: use tum_alle_common_msgs-srv:srvObjectNavigation-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvObjectNavigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <srvObjectNavigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:object_id-val is deprecated.  Use tum_alle_common_msgs-srv:object_id instead.")
  (object_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvObjectNavigation-request>) ostream)
  "Serializes a message object of type '<srvObjectNavigation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvObjectNavigation-request>) istream)
  "Deserializes a message object of type '<srvObjectNavigation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvObjectNavigation-request>)))
  "Returns string type for a service object of type '<srvObjectNavigation-request>"
  "tum_alle_common_msgs/srvObjectNavigationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectNavigation-request)))
  "Returns string type for a service object of type 'srvObjectNavigation-request"
  "tum_alle_common_msgs/srvObjectNavigationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvObjectNavigation-request>)))
  "Returns md5sum for a message object of type '<srvObjectNavigation-request>"
  "2042acb7285e51f109192acb95ddf739")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvObjectNavigation-request)))
  "Returns md5sum for a message object of type 'srvObjectNavigation-request"
  "2042acb7285e51f109192acb95ddf739")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvObjectNavigation-request>)))
  "Returns full string definition for message of type '<srvObjectNavigation-request>"
  (cl:format cl:nil "string command~%string object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvObjectNavigation-request)))
  "Returns full string definition for message of type 'srvObjectNavigation-request"
  (cl:format cl:nil "string command~%string object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvObjectNavigation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'object_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvObjectNavigation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvObjectNavigation-request
    (cl:cons ':command (command msg))
    (cl:cons ':object_id (object_id msg))
))
;//! \htmlinclude srvObjectNavigation-response.msg.html

(cl:defclass <srvObjectNavigation-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass srvObjectNavigation-response (<srvObjectNavigation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvObjectNavigation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvObjectNavigation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvObjectNavigation-response> is deprecated: use tum_alle_common_msgs-srv:srvObjectNavigation-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <srvObjectNavigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:point-val is deprecated.  Use tum_alle_common_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvObjectNavigation-response>) ostream)
  "Serializes a message object of type '<srvObjectNavigation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvObjectNavigation-response>) istream)
  "Deserializes a message object of type '<srvObjectNavigation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvObjectNavigation-response>)))
  "Returns string type for a service object of type '<srvObjectNavigation-response>"
  "tum_alle_common_msgs/srvObjectNavigationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectNavigation-response)))
  "Returns string type for a service object of type 'srvObjectNavigation-response"
  "tum_alle_common_msgs/srvObjectNavigationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvObjectNavigation-response>)))
  "Returns md5sum for a message object of type '<srvObjectNavigation-response>"
  "2042acb7285e51f109192acb95ddf739")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvObjectNavigation-response)))
  "Returns md5sum for a message object of type 'srvObjectNavigation-response"
  "2042acb7285e51f109192acb95ddf739")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvObjectNavigation-response>)))
  "Returns full string definition for message of type '<srvObjectNavigation-response>"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvObjectNavigation-response)))
  "Returns full string definition for message of type 'srvObjectNavigation-response"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvObjectNavigation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvObjectNavigation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvObjectNavigation-response
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvObjectNavigation)))
  'srvObjectNavigation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvObjectNavigation)))
  'srvObjectNavigation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvObjectNavigation)))
  "Returns string type for a service object of type '<srvObjectNavigation>"
  "tum_alle_common_msgs/srvObjectNavigation")