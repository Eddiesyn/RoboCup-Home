; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvSaveRecognition-request.msg.html

(cl:defclass <srvSaveRecognition-request> (roslisp-msg-protocol:ros-message)
  ((recognition
    :reader recognition
    :initarg :recognition
    :type tum_alle_common_msgs-msg:msg3DRecognition
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition)))
)

(cl:defclass srvSaveRecognition-request (<srvSaveRecognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvSaveRecognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvSaveRecognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvSaveRecognition-request> is deprecated: use tum_alle_common_msgs-srv:srvSaveRecognition-request instead.")))

(cl:ensure-generic-function 'recognition-val :lambda-list '(m))
(cl:defmethod recognition-val ((m <srvSaveRecognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:recognition-val is deprecated.  Use tum_alle_common_msgs-srv:recognition instead.")
  (recognition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvSaveRecognition-request>) ostream)
  "Serializes a message object of type '<srvSaveRecognition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recognition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvSaveRecognition-request>) istream)
  "Deserializes a message object of type '<srvSaveRecognition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recognition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvSaveRecognition-request>)))
  "Returns string type for a service object of type '<srvSaveRecognition-request>"
  "tum_alle_common_msgs/srvSaveRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSaveRecognition-request)))
  "Returns string type for a service object of type 'srvSaveRecognition-request"
  "tum_alle_common_msgs/srvSaveRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvSaveRecognition-request>)))
  "Returns md5sum for a message object of type '<srvSaveRecognition-request>"
  "dbd33ba36000bbcab15d127c12dd910e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvSaveRecognition-request)))
  "Returns md5sum for a message object of type 'srvSaveRecognition-request"
  "dbd33ba36000bbcab15d127c12dd910e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvSaveRecognition-request>)))
  "Returns full string definition for message of type '<srvSaveRecognition-request>"
  (cl:format cl:nil "msg3DRecognition recognition~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvSaveRecognition-request)))
  "Returns full string definition for message of type 'srvSaveRecognition-request"
  (cl:format cl:nil "msg3DRecognition recognition~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvSaveRecognition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recognition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvSaveRecognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvSaveRecognition-request
    (cl:cons ':recognition (recognition msg))
))
;//! \htmlinclude srvSaveRecognition-response.msg.html

(cl:defclass <srvSaveRecognition-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvSaveRecognition-response (<srvSaveRecognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvSaveRecognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvSaveRecognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvSaveRecognition-response> is deprecated: use tum_alle_common_msgs-srv:srvSaveRecognition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <srvSaveRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:success-val is deprecated.  Use tum_alle_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvSaveRecognition-response>) ostream)
  "Serializes a message object of type '<srvSaveRecognition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvSaveRecognition-response>) istream)
  "Deserializes a message object of type '<srvSaveRecognition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvSaveRecognition-response>)))
  "Returns string type for a service object of type '<srvSaveRecognition-response>"
  "tum_alle_common_msgs/srvSaveRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSaveRecognition-response)))
  "Returns string type for a service object of type 'srvSaveRecognition-response"
  "tum_alle_common_msgs/srvSaveRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvSaveRecognition-response>)))
  "Returns md5sum for a message object of type '<srvSaveRecognition-response>"
  "dbd33ba36000bbcab15d127c12dd910e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvSaveRecognition-response)))
  "Returns md5sum for a message object of type 'srvSaveRecognition-response"
  "dbd33ba36000bbcab15d127c12dd910e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvSaveRecognition-response>)))
  "Returns full string definition for message of type '<srvSaveRecognition-response>"
  (cl:format cl:nil "bool             success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvSaveRecognition-response)))
  "Returns full string definition for message of type 'srvSaveRecognition-response"
  (cl:format cl:nil "bool             success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvSaveRecognition-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvSaveRecognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvSaveRecognition-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvSaveRecognition)))
  'srvSaveRecognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvSaveRecognition)))
  'srvSaveRecognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvSaveRecognition)))
  "Returns string type for a service object of type '<srvSaveRecognition>"
  "tum_alle_common_msgs/srvSaveRecognition")