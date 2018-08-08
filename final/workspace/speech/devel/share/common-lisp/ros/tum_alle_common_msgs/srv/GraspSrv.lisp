; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude GraspSrv-request.msg.html

(cl:defclass <GraspSrv-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (width
    :reader width
    :initarg :width
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass GraspSrv-request (<GraspSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<GraspSrv-request> is deprecated: use tum_alle_common_msgs-srv:GraspSrv-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GraspSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pose-val is deprecated.  Use tum_alle_common_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <GraspSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:width-val is deprecated.  Use tum_alle_common_msgs-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspSrv-request>) ostream)
  "Serializes a message object of type '<GraspSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspSrv-request>) istream)
  "Deserializes a message object of type '<GraspSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspSrv-request>)))
  "Returns string type for a service object of type '<GraspSrv-request>"
  "tum_alle_common_msgs/GraspSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspSrv-request)))
  "Returns string type for a service object of type 'GraspSrv-request"
  "tum_alle_common_msgs/GraspSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspSrv-request>)))
  "Returns md5sum for a message object of type '<GraspSrv-request>"
  "eb6b24b70493bc0e6f3fea29f413d1f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspSrv-request)))
  "Returns md5sum for a message object of type 'GraspSrv-request"
  "eb6b24b70493bc0e6f3fea29f413d1f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspSrv-request>)))
  "Returns full string definition for message of type '<GraspSrv-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%std_msgs/Float64 width~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspSrv-request)))
  "Returns full string definition for message of type 'GraspSrv-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%std_msgs/Float64 width~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspSrv-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':width (width msg))
))
;//! \htmlinclude GraspSrv-response.msg.html

(cl:defclass <GraspSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass GraspSrv-response (<GraspSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<GraspSrv-response> is deprecated: use tum_alle_common_msgs-srv:GraspSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GraspSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result-val is deprecated.  Use tum_alle_common_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspSrv-response>) ostream)
  "Serializes a message object of type '<GraspSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspSrv-response>) istream)
  "Deserializes a message object of type '<GraspSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspSrv-response>)))
  "Returns string type for a service object of type '<GraspSrv-response>"
  "tum_alle_common_msgs/GraspSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspSrv-response)))
  "Returns string type for a service object of type 'GraspSrv-response"
  "tum_alle_common_msgs/GraspSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspSrv-response>)))
  "Returns md5sum for a message object of type '<GraspSrv-response>"
  "eb6b24b70493bc0e6f3fea29f413d1f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspSrv-response)))
  "Returns md5sum for a message object of type 'GraspSrv-response"
  "eb6b24b70493bc0e6f3fea29f413d1f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspSrv-response>)))
  "Returns full string definition for message of type '<GraspSrv-response>"
  (cl:format cl:nil "std_msgs/Bool result~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspSrv-response)))
  "Returns full string definition for message of type 'GraspSrv-response"
  (cl:format cl:nil "std_msgs/Bool result~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspSrv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GraspSrv)))
  'GraspSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GraspSrv)))
  'GraspSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspSrv)))
  "Returns string type for a service object of type '<GraspSrv>"
  "tum_alle_common_msgs/GraspSrv")