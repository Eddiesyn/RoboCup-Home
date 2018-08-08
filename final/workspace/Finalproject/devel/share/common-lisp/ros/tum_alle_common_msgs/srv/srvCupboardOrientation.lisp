; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvCupboardOrientation-request.msg.html

(cl:defclass <srvCupboardOrientation-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass srvCupboardOrientation-request (<srvCupboardOrientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCupboardOrientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCupboardOrientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCupboardOrientation-request> is deprecated: use tum_alle_common_msgs-srv:srvCupboardOrientation-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvCupboardOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCupboardOrientation-request>) ostream)
  "Serializes a message object of type '<srvCupboardOrientation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCupboardOrientation-request>) istream)
  "Deserializes a message object of type '<srvCupboardOrientation-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCupboardOrientation-request>)))
  "Returns string type for a service object of type '<srvCupboardOrientation-request>"
  "tum_alle_common_msgs/srvCupboardOrientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardOrientation-request)))
  "Returns string type for a service object of type 'srvCupboardOrientation-request"
  "tum_alle_common_msgs/srvCupboardOrientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCupboardOrientation-request>)))
  "Returns md5sum for a message object of type '<srvCupboardOrientation-request>"
  "53c6fb80ff67f1c304b20833f46e6c0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCupboardOrientation-request)))
  "Returns md5sum for a message object of type 'srvCupboardOrientation-request"
  "53c6fb80ff67f1c304b20833f46e6c0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCupboardOrientation-request>)))
  "Returns full string definition for message of type '<srvCupboardOrientation-request>"
  (cl:format cl:nil "string                    command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCupboardOrientation-request)))
  "Returns full string definition for message of type 'srvCupboardOrientation-request"
  (cl:format cl:nil "string                    command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCupboardOrientation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCupboardOrientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCupboardOrientation-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude srvCupboardOrientation-response.msg.html

(cl:defclass <srvCupboardOrientation-response> (roslisp-msg-protocol:ros-message)
  ((cupboard_pose
    :reader cupboard_pose
    :initarg :cupboard_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass srvCupboardOrientation-response (<srvCupboardOrientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvCupboardOrientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvCupboardOrientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvCupboardOrientation-response> is deprecated: use tum_alle_common_msgs-srv:srvCupboardOrientation-response instead.")))

(cl:ensure-generic-function 'cupboard_pose-val :lambda-list '(m))
(cl:defmethod cupboard_pose-val ((m <srvCupboardOrientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:cupboard_pose-val is deprecated.  Use tum_alle_common_msgs-srv:cupboard_pose instead.")
  (cupboard_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvCupboardOrientation-response>) ostream)
  "Serializes a message object of type '<srvCupboardOrientation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cupboard_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvCupboardOrientation-response>) istream)
  "Deserializes a message object of type '<srvCupboardOrientation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cupboard_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvCupboardOrientation-response>)))
  "Returns string type for a service object of type '<srvCupboardOrientation-response>"
  "tum_alle_common_msgs/srvCupboardOrientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardOrientation-response)))
  "Returns string type for a service object of type 'srvCupboardOrientation-response"
  "tum_alle_common_msgs/srvCupboardOrientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvCupboardOrientation-response>)))
  "Returns md5sum for a message object of type '<srvCupboardOrientation-response>"
  "53c6fb80ff67f1c304b20833f46e6c0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvCupboardOrientation-response)))
  "Returns md5sum for a message object of type 'srvCupboardOrientation-response"
  "53c6fb80ff67f1c304b20833f46e6c0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvCupboardOrientation-response>)))
  "Returns full string definition for message of type '<srvCupboardOrientation-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped cupboard_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvCupboardOrientation-response)))
  "Returns full string definition for message of type 'srvCupboardOrientation-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped cupboard_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvCupboardOrientation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cupboard_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvCupboardOrientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvCupboardOrientation-response
    (cl:cons ':cupboard_pose (cupboard_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvCupboardOrientation)))
  'srvCupboardOrientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvCupboardOrientation)))
  'srvCupboardOrientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvCupboardOrientation)))
  "Returns string type for a service object of type '<srvCupboardOrientation>"
  "tum_alle_common_msgs/srvCupboardOrientation")