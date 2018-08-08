; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msg2DRecognition.msg.html

(cl:defclass <msg2DRecognition> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (predictions2D
    :reader predictions2D
    :initarg :predictions2D
    :type (cl:vector tum_alle_common_msgs-msg:msg2DPrediction)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg2DPrediction :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction))))
)

(cl:defclass msg2DRecognition (<msg2DRecognition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg2DRecognition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg2DRecognition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msg2DRecognition> is deprecated: use tum_alle_common_msgs-msg:msg2DRecognition instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <msg2DRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:image-val is deprecated.  Use tum_alle_common_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <msg2DRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:depth_image-val is deprecated.  Use tum_alle_common_msgs-msg:depth_image instead.")
  (depth_image m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <msg2DRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:transform-val is deprecated.  Use tum_alle_common_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'predictions2D-val :lambda-list '(m))
(cl:defmethod predictions2D-val ((m <msg2DRecognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:predictions2D-val is deprecated.  Use tum_alle_common_msgs-msg:predictions2D instead.")
  (predictions2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg2DRecognition>) ostream)
  "Serializes a message object of type '<msg2DRecognition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predictions2D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predictions2D))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg2DRecognition>) istream)
  "Deserializes a message object of type '<msg2DRecognition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg2DRecognition>)))
  "Returns string type for a message object of type '<msg2DRecognition>"
  "tum_alle_common_msgs/msg2DRecognition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg2DRecognition)))
  "Returns string type for a message object of type 'msg2DRecognition"
  "tum_alle_common_msgs/msg2DRecognition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg2DRecognition>)))
  "Returns md5sum for a message object of type '<msg2DRecognition>"
  "b48a5a7aa636a553a040a0acce85e263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg2DRecognition)))
  "Returns md5sum for a message object of type 'msg2DRecognition"
  "b48a5a7aa636a553a040a0acce85e263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg2DRecognition>)))
  "Returns full string definition for message of type '<msg2DRecognition>"
  (cl:format cl:nil "sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg2DRecognition)))
  "Returns full string definition for message of type 'msg2DRecognition"
  (cl:format cl:nil "sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg2DRecognition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predictions2D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg2DRecognition>))
  "Converts a ROS message object to a list"
  (cl:list 'msg2DRecognition
    (cl:cons ':image (image msg))
    (cl:cons ':depth_image (depth_image msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':predictions2D (predictions2D msg))
))
