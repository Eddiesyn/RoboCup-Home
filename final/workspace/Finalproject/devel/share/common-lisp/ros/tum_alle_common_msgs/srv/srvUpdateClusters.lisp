; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvUpdateClusters-request.msg.html

(cl:defclass <srvUpdateClusters-request> (roslisp-msg-protocol:ros-message)
  ((cluster_name
    :reader cluster_name
    :initarg :cluster_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass srvUpdateClusters-request (<srvUpdateClusters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvUpdateClusters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvUpdateClusters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvUpdateClusters-request> is deprecated: use tum_alle_common_msgs-srv:srvUpdateClusters-request instead.")))

(cl:ensure-generic-function 'cluster_name-val :lambda-list '(m))
(cl:defmethod cluster_name-val ((m <srvUpdateClusters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:cluster_name-val is deprecated.  Use tum_alle_common_msgs-srv:cluster_name instead.")
  (cluster_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <srvUpdateClusters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pose-val is deprecated.  Use tum_alle_common_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <srvUpdateClusters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:width-val is deprecated.  Use tum_alle_common_msgs-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvUpdateClusters-request>) ostream)
  "Serializes a message object of type '<srvUpdateClusters-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cluster_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cluster_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvUpdateClusters-request>) istream)
  "Deserializes a message object of type '<srvUpdateClusters-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cluster_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cluster_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvUpdateClusters-request>)))
  "Returns string type for a service object of type '<srvUpdateClusters-request>"
  "tum_alle_common_msgs/srvUpdateClustersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvUpdateClusters-request)))
  "Returns string type for a service object of type 'srvUpdateClusters-request"
  "tum_alle_common_msgs/srvUpdateClustersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvUpdateClusters-request>)))
  "Returns md5sum for a message object of type '<srvUpdateClusters-request>"
  "93a02a6f845c7e0038a223d54e7006b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvUpdateClusters-request)))
  "Returns md5sum for a message object of type 'srvUpdateClusters-request"
  "93a02a6f845c7e0038a223d54e7006b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvUpdateClusters-request>)))
  "Returns full string definition for message of type '<srvUpdateClusters-request>"
  (cl:format cl:nil "string cluster_name~%geometry_msgs/PoseStamped pose~%float32 width~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvUpdateClusters-request)))
  "Returns full string definition for message of type 'srvUpdateClusters-request"
  (cl:format cl:nil "string cluster_name~%geometry_msgs/PoseStamped pose~%float32 width~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvUpdateClusters-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cluster_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvUpdateClusters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvUpdateClusters-request
    (cl:cons ':cluster_name (cluster_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':width (width msg))
))
;//! \htmlinclude srvUpdateClusters-response.msg.html

(cl:defclass <srvUpdateClusters-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvUpdateClusters-response (<srvUpdateClusters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvUpdateClusters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvUpdateClusters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvUpdateClusters-response> is deprecated: use tum_alle_common_msgs-srv:srvUpdateClusters-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srvUpdateClusters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result-val is deprecated.  Use tum_alle_common_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvUpdateClusters-response>) ostream)
  "Serializes a message object of type '<srvUpdateClusters-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvUpdateClusters-response>) istream)
  "Deserializes a message object of type '<srvUpdateClusters-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvUpdateClusters-response>)))
  "Returns string type for a service object of type '<srvUpdateClusters-response>"
  "tum_alle_common_msgs/srvUpdateClustersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvUpdateClusters-response)))
  "Returns string type for a service object of type 'srvUpdateClusters-response"
  "tum_alle_common_msgs/srvUpdateClustersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvUpdateClusters-response>)))
  "Returns md5sum for a message object of type '<srvUpdateClusters-response>"
  "93a02a6f845c7e0038a223d54e7006b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvUpdateClusters-response)))
  "Returns md5sum for a message object of type 'srvUpdateClusters-response"
  "93a02a6f845c7e0038a223d54e7006b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvUpdateClusters-response>)))
  "Returns full string definition for message of type '<srvUpdateClusters-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvUpdateClusters-response)))
  "Returns full string definition for message of type 'srvUpdateClusters-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvUpdateClusters-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvUpdateClusters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvUpdateClusters-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvUpdateClusters)))
  'srvUpdateClusters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvUpdateClusters)))
  'srvUpdateClusters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvUpdateClusters)))
  "Returns string type for a service object of type '<srvUpdateClusters>"
  "tum_alle_common_msgs/srvUpdateClusters")