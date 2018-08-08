; Auto-generated. Do not edit!


(cl:in-package all_msgs-srv)


;//! \htmlinclude send_pos-request.msg.html

(cl:defclass <send_pos-request> (roslisp-msg-protocol:ros-message)
  ((world_pose
    :reader world_pose
    :initarg :world_pose
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (is_target
    :reader is_target
    :initarg :is_target
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass send_pos-request (<send_pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_pos-request> is deprecated: use all_msgs-srv:send_pos-request instead.")))

(cl:ensure-generic-function 'world_pose-val :lambda-list '(m))
(cl:defmethod world_pose-val ((m <send_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:world_pose-val is deprecated.  Use all_msgs-srv:world_pose instead.")
  (world_pose m))

(cl:ensure-generic-function 'is_target-val :lambda-list '(m))
(cl:defmethod is_target-val ((m <send_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:is_target-val is deprecated.  Use all_msgs-srv:is_target instead.")
  (is_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_pos-request>) ostream)
  "Serializes a message object of type '<send_pos-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_target) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_pos-request>) istream)
  "Deserializes a message object of type '<send_pos-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_pose) istream)
    (cl:setf (cl:slot-value msg 'is_target) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_pos-request>)))
  "Returns string type for a service object of type '<send_pos-request>"
  "all_msgs/send_posRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pos-request)))
  "Returns string type for a service object of type 'send_pos-request"
  "all_msgs/send_posRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_pos-request>)))
  "Returns md5sum for a message object of type '<send_pos-request>"
  "0937dcad83c5429e3efaf62274855790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_pos-request)))
  "Returns md5sum for a message object of type 'send_pos-request"
  "0937dcad83c5429e3efaf62274855790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_pos-request>)))
  "Returns full string definition for message of type '<send_pos-request>"
  (cl:format cl:nil "geometry_msgs/PointStamped world_pose~%bool is_target~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_pos-request)))
  "Returns full string definition for message of type 'send_pos-request"
  (cl:format cl:nil "geometry_msgs/PointStamped world_pose~%bool is_target~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_pos-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'send_pos-request
    (cl:cons ':world_pose (world_pose msg))
    (cl:cons ':is_target (is_target msg))
))
;//! \htmlinclude send_pos-response.msg.html

(cl:defclass <send_pos-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass send_pos-response (<send_pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-srv:<send_pos-response> is deprecated: use all_msgs-srv:send_pos-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <send_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-srv:flag-val is deprecated.  Use all_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_pos-response>) ostream)
  "Serializes a message object of type '<send_pos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_pos-response>) istream)
  "Deserializes a message object of type '<send_pos-response>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_pos-response>)))
  "Returns string type for a service object of type '<send_pos-response>"
  "all_msgs/send_posResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pos-response)))
  "Returns string type for a service object of type 'send_pos-response"
  "all_msgs/send_posResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_pos-response>)))
  "Returns md5sum for a message object of type '<send_pos-response>"
  "0937dcad83c5429e3efaf62274855790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_pos-response)))
  "Returns md5sum for a message object of type 'send_pos-response"
  "0937dcad83c5429e3efaf62274855790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_pos-response>)))
  "Returns full string definition for message of type '<send_pos-response>"
  (cl:format cl:nil "bool flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_pos-response)))
  "Returns full string definition for message of type 'send_pos-response"
  (cl:format cl:nil "bool flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_pos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'send_pos-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'send_pos)))
  'send_pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'send_pos)))
  'send_pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_pos)))
  "Returns string type for a service object of type '<send_pos>"
  "all_msgs/send_pos")