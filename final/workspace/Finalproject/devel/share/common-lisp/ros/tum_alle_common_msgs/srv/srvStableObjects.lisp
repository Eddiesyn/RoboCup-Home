; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvStableObjects-request.msg.html

(cl:defclass <srvStableObjects-request> (roslisp-msg-protocol:ros-message)
  ((flush_cache
    :reader flush_cache
    :initarg :flush_cache
    :type cl:boolean
    :initform cl:nil)
   (buffer_time
    :reader buffer_time
    :initarg :buffer_time
    :type cl:float
    :initform 0.0)
   (table_objects
    :reader table_objects
    :initarg :table_objects
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvStableObjects-request (<srvStableObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvStableObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvStableObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvStableObjects-request> is deprecated: use tum_alle_common_msgs-srv:srvStableObjects-request instead.")))

(cl:ensure-generic-function 'flush_cache-val :lambda-list '(m))
(cl:defmethod flush_cache-val ((m <srvStableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:flush_cache-val is deprecated.  Use tum_alle_common_msgs-srv:flush_cache instead.")
  (flush_cache m))

(cl:ensure-generic-function 'buffer_time-val :lambda-list '(m))
(cl:defmethod buffer_time-val ((m <srvStableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:buffer_time-val is deprecated.  Use tum_alle_common_msgs-srv:buffer_time instead.")
  (buffer_time m))

(cl:ensure-generic-function 'table_objects-val :lambda-list '(m))
(cl:defmethod table_objects-val ((m <srvStableObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:table_objects-val is deprecated.  Use tum_alle_common_msgs-srv:table_objects instead.")
  (table_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvStableObjects-request>) ostream)
  "Serializes a message object of type '<srvStableObjects-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flush_cache) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'buffer_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'table_objects) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvStableObjects-request>) istream)
  "Deserializes a message object of type '<srvStableObjects-request>"
    (cl:setf (cl:slot-value msg 'flush_cache) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'buffer_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'table_objects) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvStableObjects-request>)))
  "Returns string type for a service object of type '<srvStableObjects-request>"
  "tum_alle_common_msgs/srvStableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStableObjects-request)))
  "Returns string type for a service object of type 'srvStableObjects-request"
  "tum_alle_common_msgs/srvStableObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvStableObjects-request>)))
  "Returns md5sum for a message object of type '<srvStableObjects-request>"
  "66f13e3d3ec3200b333a36dc56ae0cc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvStableObjects-request)))
  "Returns md5sum for a message object of type 'srvStableObjects-request"
  "66f13e3d3ec3200b333a36dc56ae0cc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvStableObjects-request>)))
  "Returns full string definition for message of type '<srvStableObjects-request>"
  (cl:format cl:nil "~%~%~%~%bool    flush_cache~%float32 buffer_time~%bool    table_objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvStableObjects-request)))
  "Returns full string definition for message of type 'srvStableObjects-request"
  (cl:format cl:nil "~%~%~%~%bool    flush_cache~%float32 buffer_time~%bool    table_objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvStableObjects-request>))
  (cl:+ 0
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvStableObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvStableObjects-request
    (cl:cons ':flush_cache (flush_cache msg))
    (cl:cons ':buffer_time (buffer_time msg))
    (cl:cons ':table_objects (table_objects msg))
))
;//! \htmlinclude srvStableObjects-response.msg.html

(cl:defclass <srvStableObjects-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type tum_alle_common_msgs-msg:msg3DRecognition
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition))
   (result_optical
    :reader result_optical
    :initarg :result_optical
    :type tum_alle_common_msgs-msg:msg3DRecognition
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg3DRecognition)))
)

(cl:defclass srvStableObjects-response (<srvStableObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvStableObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvStableObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvStableObjects-response> is deprecated: use tum_alle_common_msgs-srv:srvStableObjects-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <srvStableObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result-val is deprecated.  Use tum_alle_common_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'result_optical-val :lambda-list '(m))
(cl:defmethod result_optical-val ((m <srvStableObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:result_optical-val is deprecated.  Use tum_alle_common_msgs-srv:result_optical instead.")
  (result_optical m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvStableObjects-response>) ostream)
  "Serializes a message object of type '<srvStableObjects-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result_optical) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvStableObjects-response>) istream)
  "Deserializes a message object of type '<srvStableObjects-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result_optical) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvStableObjects-response>)))
  "Returns string type for a service object of type '<srvStableObjects-response>"
  "tum_alle_common_msgs/srvStableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStableObjects-response)))
  "Returns string type for a service object of type 'srvStableObjects-response"
  "tum_alle_common_msgs/srvStableObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvStableObjects-response>)))
  "Returns md5sum for a message object of type '<srvStableObjects-response>"
  "66f13e3d3ec3200b333a36dc56ae0cc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvStableObjects-response)))
  "Returns md5sum for a message object of type 'srvStableObjects-response"
  "66f13e3d3ec3200b333a36dc56ae0cc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvStableObjects-response>)))
  "Returns full string definition for message of type '<srvStableObjects-response>"
  (cl:format cl:nil "msg3DRecognition result~%msg3DRecognition result_optical~%~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvStableObjects-response)))
  "Returns full string definition for message of type 'srvStableObjects-response"
  (cl:format cl:nil "msg3DRecognition result~%msg3DRecognition result_optical~%~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DRecognition~%sensor_msgs/Image       image~%sensor_msgs/Image       depth_image~%geometry_msgs/Transform transform~%msg2DPrediction[]       predictions2D~%msg3DPrediction[]       predictions3D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%================================================================================~%MSG: tum_alle_common_msgs/msg3DPrediction~%string                      frame~%geometry_msgs/PointStamped  point~%geometry_msgs/Vector3       size~%string                      label~%float32                     confidence~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvStableObjects-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result_optical))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvStableObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvStableObjects-response
    (cl:cons ':result (result msg))
    (cl:cons ':result_optical (result_optical msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvStableObjects)))
  'srvStableObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvStableObjects)))
  'srvStableObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvStableObjects)))
  "Returns string type for a service object of type '<srvStableObjects>"
  "tum_alle_common_msgs/srvStableObjects")