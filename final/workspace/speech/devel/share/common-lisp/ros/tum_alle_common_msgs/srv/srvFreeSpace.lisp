; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvFreeSpace-request.msg.html

(cl:defclass <srvFreeSpace-request> (roslisp-msg-protocol:ros-message)
  ((clust2D
    :reader clust2D
    :initarg :clust2D
    :type tum_alle_common_msgs-msg:msg2DRecognition
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg2DRecognition)))
)

(cl:defclass srvFreeSpace-request (<srvFreeSpace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvFreeSpace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvFreeSpace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvFreeSpace-request> is deprecated: use tum_alle_common_msgs-srv:srvFreeSpace-request instead.")))

(cl:ensure-generic-function 'clust2D-val :lambda-list '(m))
(cl:defmethod clust2D-val ((m <srvFreeSpace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:clust2D-val is deprecated.  Use tum_alle_common_msgs-srv:clust2D instead.")
  (clust2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvFreeSpace-request>) ostream)
  "Serializes a message object of type '<srvFreeSpace-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clust2D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvFreeSpace-request>) istream)
  "Deserializes a message object of type '<srvFreeSpace-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clust2D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvFreeSpace-request>)))
  "Returns string type for a service object of type '<srvFreeSpace-request>"
  "tum_alle_common_msgs/srvFreeSpaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvFreeSpace-request)))
  "Returns string type for a service object of type 'srvFreeSpace-request"
  "tum_alle_common_msgs/srvFreeSpaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvFreeSpace-request>)))
  "Returns md5sum for a message object of type '<srvFreeSpace-request>"
  "e7bbf846ac124617879d82f8cbf6f51d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvFreeSpace-request)))
  "Returns md5sum for a message object of type 'srvFreeSpace-request"
  "e7bbf846ac124617879d82f8cbf6f51d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvFreeSpace-request>)))
  "Returns full string definition for message of type '<srvFreeSpace-request>"
  (cl:format cl:nil "msg2DRecognition clust2D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvFreeSpace-request)))
  "Returns full string definition for message of type 'srvFreeSpace-request"
  (cl:format cl:nil "msg2DRecognition clust2D~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvFreeSpace-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clust2D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvFreeSpace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvFreeSpace-request
    (cl:cons ':clust2D (clust2D msg))
))
;//! \htmlinclude srvFreeSpace-response.msg.html

(cl:defclass <srvFreeSpace-response> (roslisp-msg-protocol:ros-message)
  ((left_cluster
    :reader left_cluster
    :initarg :left_cluster
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (left_of
    :reader left_of
    :initarg :left_of
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (right_cluster
    :reader right_cluster
    :initarg :right_cluster
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (right_of
    :reader right_of
    :initarg :right_of
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (unknown_objects
    :reader unknown_objects
    :initarg :unknown_objects
    :type (cl:vector tum_alle_common_msgs-msg:msg3DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg3DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction)))
   (unknown_left_cluster
    :reader unknown_left_cluster
    :initarg :unknown_left_cluster
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (unknown_left_of
    :reader unknown_left_of
    :initarg :unknown_left_of
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (unknown_right_cluster
    :reader unknown_right_cluster
    :initarg :unknown_right_cluster
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (unknown_right_of
    :reader unknown_right_of
    :initarg :unknown_right_of
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass srvFreeSpace-response (<srvFreeSpace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvFreeSpace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvFreeSpace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvFreeSpace-response> is deprecated: use tum_alle_common_msgs-srv:srvFreeSpace-response instead.")))

(cl:ensure-generic-function 'left_cluster-val :lambda-list '(m))
(cl:defmethod left_cluster-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:left_cluster-val is deprecated.  Use tum_alle_common_msgs-srv:left_cluster instead.")
  (left_cluster m))

(cl:ensure-generic-function 'left_of-val :lambda-list '(m))
(cl:defmethod left_of-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:left_of-val is deprecated.  Use tum_alle_common_msgs-srv:left_of instead.")
  (left_of m))

(cl:ensure-generic-function 'right_cluster-val :lambda-list '(m))
(cl:defmethod right_cluster-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:right_cluster-val is deprecated.  Use tum_alle_common_msgs-srv:right_cluster instead.")
  (right_cluster m))

(cl:ensure-generic-function 'right_of-val :lambda-list '(m))
(cl:defmethod right_of-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:right_of-val is deprecated.  Use tum_alle_common_msgs-srv:right_of instead.")
  (right_of m))

(cl:ensure-generic-function 'unknown_objects-val :lambda-list '(m))
(cl:defmethod unknown_objects-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:unknown_objects-val is deprecated.  Use tum_alle_common_msgs-srv:unknown_objects instead.")
  (unknown_objects m))

(cl:ensure-generic-function 'unknown_left_cluster-val :lambda-list '(m))
(cl:defmethod unknown_left_cluster-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:unknown_left_cluster-val is deprecated.  Use tum_alle_common_msgs-srv:unknown_left_cluster instead.")
  (unknown_left_cluster m))

(cl:ensure-generic-function 'unknown_left_of-val :lambda-list '(m))
(cl:defmethod unknown_left_of-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:unknown_left_of-val is deprecated.  Use tum_alle_common_msgs-srv:unknown_left_of instead.")
  (unknown_left_of m))

(cl:ensure-generic-function 'unknown_right_cluster-val :lambda-list '(m))
(cl:defmethod unknown_right_cluster-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:unknown_right_cluster-val is deprecated.  Use tum_alle_common_msgs-srv:unknown_right_cluster instead.")
  (unknown_right_cluster m))

(cl:ensure-generic-function 'unknown_right_of-val :lambda-list '(m))
(cl:defmethod unknown_right_of-val ((m <srvFreeSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:unknown_right_of-val is deprecated.  Use tum_alle_common_msgs-srv:unknown_right_of instead.")
  (unknown_right_of m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvFreeSpace-response>) ostream)
  "Serializes a message object of type '<srvFreeSpace-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_cluster))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_of))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_cluster))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_of))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unknown_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'unknown_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unknown_left_cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'unknown_left_cluster))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unknown_left_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'unknown_left_of))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unknown_right_cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'unknown_right_cluster))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unknown_right_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'unknown_right_of))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvFreeSpace-response>) istream)
  "Deserializes a message object of type '<srvFreeSpace-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unknown_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unknown_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg3DPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unknown_left_cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unknown_left_cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unknown_left_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unknown_left_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unknown_right_cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unknown_right_cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unknown_right_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unknown_right_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvFreeSpace-response>)))
  "Returns string type for a service object of type '<srvFreeSpace-response>"
  "tum_alle_common_msgs/srvFreeSpaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvFreeSpace-response)))
  "Returns string type for a service object of type 'srvFreeSpace-response"
  "tum_alle_common_msgs/srvFreeSpaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvFreeSpace-response>)))
  "Returns md5sum for a message object of type '<srvFreeSpace-response>"
  "e7bbf846ac124617879d82f8cbf6f51d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvFreeSpace-response)))
  "Returns md5sum for a message object of type 'srvFreeSpace-response"
  "e7bbf846ac124617879d82f8cbf6f51d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvFreeSpace-response>)))
  "Returns full string definition for message of type '<srvFreeSpace-response>"
  (cl:format cl:nil "geometry_msgs/Point[] left_cluster~%geometry_msgs/Point[] left_of~%geometry_msgs/Point[] right_cluster~%geometry_msgs/Point[] right_of~%~%msg3DPrediction[] unknown_objects~%geometry_msgs/Point[] unknown_left_cluster~%geometry_msgs/Point[] unknown_left_of~%geometry_msgs/Point[] unknown_right_cluster~%geometry_msgs/Point[] unknown_right_of~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvFreeSpace-response)))
  "Returns full string definition for message of type 'srvFreeSpace-response"
  (cl:format cl:nil "geometry_msgs/Point[] left_cluster~%geometry_msgs/Point[] left_of~%geometry_msgs/Point[] right_cluster~%geometry_msgs/Point[] right_of~%~%msg3DPrediction[] unknown_objects~%geometry_msgs/Point[] unknown_left_cluster~%geometry_msgs/Point[] unknown_left_of~%geometry_msgs/Point[] unknown_right_cluster~%geometry_msgs/Point[] unknown_right_of~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvFreeSpace-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unknown_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unknown_left_cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unknown_left_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unknown_right_cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unknown_right_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvFreeSpace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvFreeSpace-response
    (cl:cons ':left_cluster (left_cluster msg))
    (cl:cons ':left_of (left_of msg))
    (cl:cons ':right_cluster (right_cluster msg))
    (cl:cons ':right_of (right_of msg))
    (cl:cons ':unknown_objects (unknown_objects msg))
    (cl:cons ':unknown_left_cluster (unknown_left_cluster msg))
    (cl:cons ':unknown_left_of (unknown_left_of msg))
    (cl:cons ':unknown_right_cluster (unknown_right_cluster msg))
    (cl:cons ':unknown_right_of (unknown_right_of msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvFreeSpace)))
  'srvFreeSpace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvFreeSpace)))
  'srvFreeSpace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvFreeSpace)))
  "Returns string type for a service object of type '<srvFreeSpace>"
  "tum_alle_common_msgs/srvFreeSpace")