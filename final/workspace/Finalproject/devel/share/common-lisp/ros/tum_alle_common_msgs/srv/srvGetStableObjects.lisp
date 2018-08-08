; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvGetStableObjects-request.msg.html

(cl:defclass <srvGetStableObjects-request> (roslisp-msg-protocol:ros-message)
  ((recognitions
    :reader recognitions
    :initarg :recognitions
    :type (cl:vector tum_alle_common_msgs-msg:msg3DRecognition)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msg3DRecognition :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition))))
)

(cl:defclass srvGetStableObjects-request (<srvGetStableObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetStableObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetStableObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetStableObjects-request> is deprecated: use tum_alle_common_msgs-srv:srvGetStableObjects-request instead.")))

(cl:ensure-generic-function 'recognitions-val :lambda-list '(m))
(cl:defmethod recognitions-val ((m <srvGetStableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:recognitions-val is deprecated.  Use tum_alle_common_msgs-srv:recognitions instead.")
  (recognitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetStableObjects-request>) ostream)
  "Serializes a message object of type '<srvGetStableObjects-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recognitions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'recognitions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetStableObjects-request>) istream)
  "Deserializes a message object of type '<srvGetStableObjects-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recognitions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recognitions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetStableObjects-request>)))
  "Returns string type for a service object of type '<srvGetStableObjects-request>"
  "tum_alle_common_msgs/srvGetStableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetStableObjects-request)))
  "Returns string type for a service object of type 'srvGetStableObjects-request"
  "tum_alle_common_msgs/srvGetStableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetStableObjects-request>)))
  "Returns md5sum for a message object of type '<srvGetStableObjects-request>"
  "6268bb2b461282f65320ab49c26d8ff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetStableObjects-request)))
  "Returns md5sum for a message object of type 'srvGetStableObjects-request"
  "6268bb2b461282f65320ab49c26d8ff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetStableObjects-request>)))
  "Returns full string definition for message of type '<srvGetStableObjects-request>"
  (cl:format cl:nil "msg3DRecognition[] recognitions~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetStableObjects-request)))
  "Returns full string definition for message of type 'srvGetStableObjects-request"
  (cl:format cl:nil "msg3DRecognition[] recognitions~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetStableObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recognitions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetStableObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetStableObjects-request
    (cl:cons ':recognitions (recognitions msg))
))
;//! \htmlinclude srvGetStableObjects-response.msg.html

(cl:defclass <srvGetStableObjects-response> (roslisp-msg-protocol:ros-message)
  ((recognition
    :reader recognition
    :initarg :recognition
    :type tum_alle_common_msgs-msg:msg3DRecognition
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition)))
)

(cl:defclass srvGetStableObjects-response (<srvGetStableObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetStableObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetStableObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetStableObjects-response> is deprecated: use tum_alle_common_msgs-srv:srvGetStableObjects-response instead.")))

(cl:ensure-generic-function 'recognition-val :lambda-list '(m))
(cl:defmethod recognition-val ((m <srvGetStableObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:recognition-val is deprecated.  Use tum_alle_common_msgs-srv:recognition instead.")
  (recognition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetStableObjects-response>) ostream)
  "Serializes a message object of type '<srvGetStableObjects-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recognition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetStableObjects-response>) istream)
  "Deserializes a message object of type '<srvGetStableObjects-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recognition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetStableObjects-response>)))
  "Returns string type for a service object of type '<srvGetStableObjects-response>"
  "tum_alle_common_msgs/srvGetStableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetStableObjects-response)))
  "Returns string type for a service object of type 'srvGetStableObjects-response"
  "tum_alle_common_msgs/srvGetStableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetStableObjects-response>)))
  "Returns md5sum for a message object of type '<srvGetStableObjects-response>"
  "6268bb2b461282f65320ab49c26d8ff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetStableObjects-response)))
  "Returns md5sum for a message object of type 'srvGetStableObjects-response"
  "6268bb2b461282f65320ab49c26d8ff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetStableObjects-response>)))
  "Returns full string definition for message of type '<srvGetStableObjects-response>"
  (cl:format cl:nil "msg3DRecognition recognition~%~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetStableObjects-response)))
  "Returns full string definition for message of type 'srvGetStableObjects-response"
  (cl:format cl:nil "msg3DRecognition recognition~%~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetStableObjects-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recognition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetStableObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetStableObjects-response
    (cl:cons ':recognition (recognition msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvGetStableObjects)))
  'srvGetStableObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvGetStableObjects)))
  'srvGetStableObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetStableObjects)))
  "Returns string type for a service object of type '<srvGetStableObjects>"
  "tum_alle_common_msgs/srvGetStableObjects")