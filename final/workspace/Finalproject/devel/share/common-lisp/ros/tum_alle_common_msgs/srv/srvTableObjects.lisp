; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvTableObjects-request.msg.html

(cl:defclass <srvTableObjects-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass srvTableObjects-request (<srvTableObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvTableObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvTableObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvTableObjects-request> is deprecated: use tum_alle_common_msgs-srv:srvTableObjects-request instead.")))

(cl:ensure-generic-function 'pred2D-val :lambda-list '(m))
(cl:defmethod pred2D-val ((m <srvTableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pred2D-val is deprecated.  Use tum_alle_common_msgs-srv:pred2D instead.")
  (pred2D m))

(cl:ensure-generic-function 'pred3D-val :lambda-list '(m))
(cl:defmethod pred3D-val ((m <srvTableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:pred3D-val is deprecated.  Use tum_alle_common_msgs-srv:pred3D instead.")
  (pred3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvTableObjects-request>) ostream)
  "Serializes a message object of type '<srvTableObjects-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvTableObjects-request>) istream)
  "Deserializes a message object of type '<srvTableObjects-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvTableObjects-request>)))
  "Returns string type for a service object of type '<srvTableObjects-request>"
  "tum_alle_common_msgs/srvTableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTableObjects-request)))
  "Returns string type for a service object of type 'srvTableObjects-request"
  "tum_alle_common_msgs/srvTableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvTableObjects-request>)))
  "Returns md5sum for a message object of type '<srvTableObjects-request>"
  "a1ce48b3803e21bee5394bd8790e6e04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvTableObjects-request)))
  "Returns md5sum for a message object of type 'srvTableObjects-request"
  "a1ce48b3803e21bee5394bd8790e6e04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvTableObjects-request>)))
  "Returns full string definition for message of type '<srvTableObjects-request>"
  (cl:format cl:nil "msg2DPrediction[] pred2D~%msg3DPrediction[] pred3D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvTableObjects-request)))
  "Returns full string definition for message of type 'srvTableObjects-request"
  (cl:format cl:nil "msg2DPrediction[] pred2D~%msg3DPrediction[] pred3D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvTableObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pred2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pred3D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvTableObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvTableObjects-request
    (cl:cons ':pred2D (pred2D msg))
    (cl:cons ':pred3D (pred3D msg))
))
;//! \htmlinclude srvTableObjects-response.msg.html

(cl:defclass <srvTableObjects-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvTableObjects-response (<srvTableObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvTableObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvTableObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvTableObjects-response> is deprecated: use tum_alle_common_msgs-srv:srvTableObjects-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <srvTableObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:success-val is deprecated.  Use tum_alle_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvTableObjects-response>) ostream)
  "Serializes a message object of type '<srvTableObjects-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvTableObjects-response>) istream)
  "Deserializes a message object of type '<srvTableObjects-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvTableObjects-response>)))
  "Returns string type for a service object of type '<srvTableObjects-response>"
  "tum_alle_common_msgs/srvTableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTableObjects-response)))
  "Returns string type for a service object of type 'srvTableObjects-response"
  "tum_alle_common_msgs/srvTableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvTableObjects-response>)))
  "Returns md5sum for a message object of type '<srvTableObjects-response>"
  "a1ce48b3803e21bee5394bd8790e6e04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvTableObjects-response)))
  "Returns md5sum for a message object of type 'srvTableObjects-response"
  "a1ce48b3803e21bee5394bd8790e6e04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvTableObjects-response>)))
  "Returns full string definition for message of type '<srvTableObjects-response>"
  (cl:format cl:nil "bool              success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvTableObjects-response)))
  "Returns full string definition for message of type 'srvTableObjects-response"
  (cl:format cl:nil "bool              success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvTableObjects-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvTableObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvTableObjects-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvTableObjects)))
  'srvTableObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvTableObjects)))
  'srvTableObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvTableObjects)))
  "Returns string type for a service object of type '<srvTableObjects>"
  "tum_alle_common_msgs/srvTableObjects")