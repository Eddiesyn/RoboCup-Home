; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvInferFromList-request.msg.html

(cl:defclass <srvInferFromList-request> (roslisp-msg-protocol:ros-message)
  ((pred2D
    :reader pred2D
    :initarg :pred2D
    :type (cl:vector tum_alle_common_msgs-msg:msg2DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg2DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction)))
   (pred3D
    :reader pred3D
    :initarg :pred3D
    :type (cl:vector tum_alle_common_msgs-msg:msg3DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg3DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction))))
)

(cl:defclass srvInferFromList-request (<srvInferFromList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvInferFromList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvInferFromList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvInferFromList-request> is deprecated: use tum_alle_common_msgs-srv:srvInferFromList-request instead.")))

(cl:ensure-generic-function 'pred2D-val :lambda-list '(m))
(cl:defmethod pred2D-val ((m <srvInferFromList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pred2D-val is deprecated.  Use tum_alle_common_msgs-srv:pred2D instead.")
  (pred2D m))

(cl:ensure-generic-function 'pred3D-val :lambda-list '(m))
(cl:defmethod pred3D-val ((m <srvInferFromList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pred3D-val is deprecated.  Use tum_alle_common_msgs-srv:pred3D instead.")
  (pred3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvInferFromList-request>) ostream)
  "Serializes a message object of type '<srvInferFromList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pred2D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pred2D))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pred3D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pred3D))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvInferFromList-request>) istream)
  "Deserializes a message object of type '<srvInferFromList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pred2D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pred2D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pred3D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pred3D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvInferFromList-request>)))
  "Returns string type for a service object of type '<srvInferFromList-request>"
  "tum_alle_common_msgs/srvInferFromListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvInferFromList-request)))
  "Returns string type for a service object of type 'srvInferFromList-request"
  "tum_alle_common_msgs/srvInferFromListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvInferFromList-request>)))
  "Returns md5sum for a message object of type '<srvInferFromList-request>"
  "ba1dfc2541572858b8492a33b42bd13b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvInferFromList-request)))
  "Returns md5sum for a message object of type 'srvInferFromList-request"
  "ba1dfc2541572858b8492a33b42bd13b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvInferFromList-request>)))
  "Returns full string definition for message of type '<srvInferFromList-request>"
  (cl:format cl:nil "tum_alle_common_msgs/msg2DPrediction[] pred2D~%tum_alle_common_msgs/msg3DPrediction[] pred3D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvInferFromList-request)))
  "Returns full string definition for message of type 'srvInferFromList-request"
  (cl:format cl:nil "tum_alle_common_msgs/msg2DPrediction[] pred2D~%tum_alle_common_msgs/msg3DPrediction[] pred3D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvInferFromList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pred2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pred3D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvInferFromList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvInferFromList-request
    (cl:cons ':pred2D (pred2D msg))
    (cl:cons ':pred3D (pred3D msg))
))
;//! \htmlinclude srvInferFromList-response.msg.html

(cl:defclass <srvInferFromList-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (grasp
    :reader grasp
    :initarg :grasp
    :type tum_alle_common_msgs-msg:msgGraspInfo
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msgGraspInfo))
   (place
    :reader place
    :initarg :place
    :type tum_alle_common_msgs-msg:msgGraspInfo
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msgGraspInfo))
   (cluster_labels
    :reader cluster_labels
    :initarg :cluster_labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass srvInferFromList-response (<srvInferFromList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvInferFromList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvInferFromList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvInferFromList-response> is deprecated: use tum_alle_common_msgs-srv:srvInferFromList-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srvInferFromList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result-val is deprecated.  Use tum_alle_common_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'grasp-val :lambda-list '(m))
(cl:defmethod grasp-val ((m <srvInferFromList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:grasp-val is deprecated.  Use tum_alle_common_msgs-srv:grasp instead.")
  (grasp m))

(cl:ensure-generic-function 'place-val :lambda-list '(m))
(cl:defmethod place-val ((m <srvInferFromList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:place-val is deprecated.  Use tum_alle_common_msgs-srv:place instead.")
  (place m))

(cl:ensure-generic-function 'cluster_labels-val :lambda-list '(m))
(cl:defmethod cluster_labels-val ((m <srvInferFromList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:cluster_labels-val is deprecated.  Use tum_alle_common_msgs-srv:cluster_labels instead.")
  (cluster_labels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvInferFromList-response>) ostream)
  "Serializes a message object of type '<srvInferFromList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster_labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'cluster_labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvInferFromList-response>) istream)
  "Deserializes a message object of type '<srvInferFromList-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster_labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster_labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvInferFromList-response>)))
  "Returns string type for a service object of type '<srvInferFromList-response>"
  "tum_alle_common_msgs/srvInferFromListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvInferFromList-response)))
  "Returns string type for a service object of type 'srvInferFromList-response"
  "tum_alle_common_msgs/srvInferFromListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvInferFromList-response>)))
  "Returns md5sum for a message object of type '<srvInferFromList-response>"
  "ba1dfc2541572858b8492a33b42bd13b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvInferFromList-response)))
  "Returns md5sum for a message object of type 'srvInferFromList-response"
  "ba1dfc2541572858b8492a33b42bd13b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvInferFromList-response>)))
  "Returns full string definition for message of type '<srvInferFromList-response>"
  (cl:format cl:nil "bool result~%msgGraspInfo grasp~%msgGraspInfo place~%string[] cluster_labels~%~%================================================================================~%MSG: tum_alle_common_msgs/msgGraspInfo~%string label~%string grasp_type~%string direction~%float64 width~%int32 shelf_level~%geometry_msgs/PoseStamped pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvInferFromList-response)))
  "Returns full string definition for message of type 'srvInferFromList-response"
  (cl:format cl:nil "bool result~%msgGraspInfo grasp~%msgGraspInfo place~%string[] cluster_labels~%~%================================================================================~%MSG: tum_alle_common_msgs/msgGraspInfo~%string label~%string grasp_type~%string direction~%float64 width~%int32 shelf_level~%geometry_msgs/PoseStamped pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvInferFromList-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster_labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvInferFromList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvInferFromList-response
    (cl:cons ':result (result msg))
    (cl:cons ':grasp (grasp msg))
    (cl:cons ':place (place msg))
    (cl:cons ':cluster_labels (cluster_labels msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvInferFromList)))
  'srvInferFromList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvInferFromList)))
  'srvInferFromList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvInferFromList)))
  "Returns string type for a service object of type '<srvInferFromList>"
  "tum_alle_common_msgs/srvInferFromList")