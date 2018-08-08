; Auto-generated. Do not edit!


(cl:in-package all_msgs-srv)


;//! \htmlinclude send_pose-request.msg.html

(cl:defclass <send_pose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (is_target
    :reader is_target
    :initarg :is_target
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass send_pose-request (<send_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_pose-request> is deprecated: use all_msgs-srv:send_pose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <send_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:pose-val is deprecated.  Use all_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'is_target-val :lambda-list '(m))
(cl:defmethod is_target-val ((m <send_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:is_target-val is deprecated.  Use all_msgs-srv:is_target instead.")
  (is_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_pose-request>) ostream)
  "Serializes a message object of type '<send_pose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_target) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_pose-request>) istream)
  "Deserializes a message object of type '<send_pose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'is_target) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_pose-request>)))
  "Returns string type for a service object of type '<send_pose-request>"
  "all_msgs/send_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pose-request)))
  "Returns string type for a service object of type 'send_pose-request"
  "all_msgs/send_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_pose-request>)))
  "Returns md5sum for a message object of type '<send_pose-request>"
  "054de5c78a71069d7eba0f4079e28d3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_pose-request)))
  "Returns md5sum for a message object of type 'send_pose-request"
  "054de5c78a71069d7eba0f4079e28d3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_pose-request>)))
  "Returns full string definition for message of type '<send_pose-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%bool is_target~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_pose-request)))
  "Returns full string definition for message of type 'send_pose-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%bool is_target~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_pose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'send_pose-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':is_target (is_target msg))
))
;//! \htmlinclude send_pose-response.msg.html

(cl:defclass <send_pose-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass send_pose-response (<send_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_pose-response> is deprecated: use all_msgs-srv:send_pose-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <send_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:flag-val is deprecated.  Use all_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_pose-response>) ostream)
  "Serializes a message object of type '<send_pose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_pose-response>) istream)
  "Deserializes a message object of type '<send_pose-response>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_pose-response>)))
  "Returns string type for a service object of type '<send_pose-response>"
  "all_msgs/send_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pose-response)))
  "Returns string type for a service object of type 'send_pose-response"
  "all_msgs/send_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_pose-response>)))
  "Returns md5sum for a message object of type '<send_pose-response>"
  "054de5c78a71069d7eba0f4079e28d3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_pose-response)))
  "Returns md5sum for a message object of type 'send_pose-response"
  "054de5c78a71069d7eba0f4079e28d3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_pose-response>)))
  "Returns full string definition for message of type '<send_pose-response>"
  (cl:format cl:nil "bool flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_pose-response)))
  "Returns full string definition for message of type 'send_pose-response"
  (cl:format cl:nil "bool flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_pose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'send_pose-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'send_pose)))
  'send_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'send_pose)))
  'send_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pose)))
  "Returns string type for a service object of type '<send_pose>"
  "all_msgs/send_pose")