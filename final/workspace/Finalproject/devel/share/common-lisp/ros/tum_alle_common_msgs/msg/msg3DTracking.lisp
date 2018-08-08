; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msg3DTracking.msg.html

(cl:defclass <msg3DTracking> (roslisp-msg-protocol:ros-message)
  ((tracked_id
    :reader tracked_id
    :initarg :tracked_id
    :type cl:integer
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (predictions2D
    :reader predictions2D
    :initarg :predictions2D
    :type (cl:vector tum_alle_common_msgs-msg:msg2DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg2DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction)))
   (predictions
    :reader predictions
    :initarg :predictions
    :type (cl:vector tum_alle_common_msgs-msg:msg3DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg3DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction))))
)

(cl:defclass msg3DTracking (<msg3DTracking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg3DTracking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg3DTracking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msg3DTracking> is deprecated: use tum_alle_common_msgs-msg:msg3DTracking instead.")))

(cl:ensure-generic-function 'tracked_id-val :lambda-list '(m))
(cl:defmethod tracked_id-val ((m <msg3DTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:tracked_id-val is deprecated.  Use tum_alle_common_msgs-msg:tracked_id instead.")
  (tracked_id m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <msg3DTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:ids-val is deprecated.  Use tum_alle_common_msgs-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'predictions2D-val :lambda-list '(m))
(cl:defmethod predictions2D-val ((m <msg3DTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:predictions2D-val is deprecated.  Use tum_alle_common_msgs-msg:predictions2D instead.")
  (predictions2D m))

(cl:ensure-generic-function 'predictions-val :lambda-list '(m))
(cl:defmethod predictions-val ((m <msg3DTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:predictions-val is deprecated.  Use tum_alle_common_msgs-msg:predictions instead.")
  (predictions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg3DTracking>) ostream)
  "Serializes a message object of type '<msg3DTracking>"
  (cl:let* ((signed (cl:slot-value msg 'tracked_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predictions2D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predictions2D))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predictions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predictions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg3DTracking>) istream)
  "Deserializes a message object of type '<msg3DTracking>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracked_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predictions2D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predictions2D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predictions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predictions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg3DTracking>)))
  "Returns string type for a message object of type '<msg3DTracking>"
  "tum_alle_common_msgs/msg3DTracking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg3DTracking)))
  "Returns string type for a message object of type 'msg3DTracking"
  "tum_alle_common_msgs/msg3DTracking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg3DTracking>)))
  "Returns md5sum for a message object of type '<msg3DTracking>"
  "e2d4dcf1d4d32e9b2837927ad118d684")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg3DTracking)))
  "Returns md5sum for a message object of type 'msg3DTracking"
  "e2d4dcf1d4d32e9b2837927ad118d684")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg3DTracking>)))
  "Returns full string definition for message of type '<msg3DTracking>"
  (cl:format cl:nil "int32                     tracked_id~%int32[]                   ids~%msg2DPrediction[]         predictions2D~%msg3DPrediction[]         predictions~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg3DTracking)))
  "Returns full string definition for message of type 'msg3DTracking"
  (cl:format cl:nil "int32                     tracked_id~%int32[]                   ids~%msg2DPrediction[]         predictions2D~%msg3DPrediction[]         predictions~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg3DTracking>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predictions2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predictions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg3DTracking>))
  "Converts a ROS message object to a list"
  (cl:list 'msg3DTracking
    (cl:cons ':tracked_id (tracked_id msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':predictions2D (predictions2D msg))
    (cl:cons ':predictions (predictions msg))
))
