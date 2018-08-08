; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvGetDepth-request.msg.html

(cl:defclass <srvGetDepth-request> (roslisp-msg-protocol:ros-message)
  ((depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (prediction2D
    :reader prediction2D
    :initarg :prediction2D
    :type tum_alle_common_msgs-msg:msg2DPrediction
    :initform (cl:make-instance 'tum_alle_common_msgs-msg:msg2DPrediction)))
)

(cl:defclass srvGetDepth-request (<srvGetDepth-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetDepth-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetDepth-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetDepth-request> is deprecated: use tum_alle_common_msgs-srv:srvGetDepth-request instead.")))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <srvGetDepth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:depth_image-val is deprecated.  Use tum_alle_common_msgs-srv:depth_image instead.")
  (depth_image m))

(cl:ensure-generic-function 'prediction2D-val :lambda-list '(m))
(cl:defmethod prediction2D-val ((m <srvGetDepth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:prediction2D-val is deprecated.  Use tum_alle_common_msgs-srv:prediction2D instead.")
  (prediction2D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetDepth-request>) ostream)
  "Serializes a message object of type '<srvGetDepth-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prediction2D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetDepth-request>) istream)
  "Deserializes a message object of type '<srvGetDepth-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prediction2D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetDepth-request>)))
  "Returns string type for a service object of type '<srvGetDepth-request>"
  "tum_alle_common_msgs/srvGetDepthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetDepth-request)))
  "Returns string type for a service object of type 'srvGetDepth-request"
  "tum_alle_common_msgs/srvGetDepthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetDepth-request>)))
  "Returns md5sum for a message object of type '<srvGetDepth-request>"
  "ff32a7ec5d38344a7d257eee320c2c21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetDepth-request)))
  "Returns md5sum for a message object of type 'srvGetDepth-request"
  "ff32a7ec5d38344a7d257eee320c2c21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetDepth-request>)))
  "Returns full string definition for message of type '<srvGetDepth-request>"
  (cl:format cl:nil "sensor_msgs/Image     depth_image~%msg2DPrediction       prediction2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetDepth-request)))
  "Returns full string definition for message of type 'srvGetDepth-request"
  (cl:format cl:nil "sensor_msgs/Image     depth_image~%msg2DPrediction       prediction2D~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tum_alle_common_msgs/msg2DPrediction~%string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetDepth-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prediction2D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetDepth-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetDepth-request
    (cl:cons ':depth_image (depth_image msg))
    (cl:cons ':prediction2D (prediction2D msg))
))
;//! \htmlinclude srvGetDepth-response.msg.html

(cl:defclass <srvGetDepth-response> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass srvGetDepth-response (<srvGetDepth-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetDepth-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetDepth-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetDepth-response> is deprecated: use tum_alle_common_msgs-srv:srvGetDepth-response instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <srvGetDepth-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:depth-val is deprecated.  Use tum_alle_common_msgs-srv:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetDepth-response>) ostream)
  "Serializes a message object of type '<srvGetDepth-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetDepth-response>) istream)
  "Deserializes a message object of type '<srvGetDepth-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetDepth-response>)))
  "Returns string type for a service object of type '<srvGetDepth-response>"
  "tum_alle_common_msgs/srvGetDepthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetDepth-response)))
  "Returns string type for a service object of type 'srvGetDepth-response"
  "tum_alle_common_msgs/srvGetDepthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetDepth-response>)))
  "Returns md5sum for a message object of type '<srvGetDepth-response>"
  "ff32a7ec5d38344a7d257eee320c2c21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetDepth-response)))
  "Returns md5sum for a message object of type 'srvGetDepth-response"
  "ff32a7ec5d38344a7d257eee320c2c21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetDepth-response>)))
  "Returns full string definition for message of type '<srvGetDepth-response>"
  (cl:format cl:nil "float32               depth~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetDepth-response)))
  "Returns full string definition for message of type 'srvGetDepth-response"
  (cl:format cl:nil "float32               depth~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetDepth-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetDepth-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetDepth-response
    (cl:cons ':depth (depth msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvGetDepth)))
  'srvGetDepth-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvGetDepth)))
  'srvGetDepth-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetDepth)))
  "Returns string type for a service object of type '<srvGetDepth>"
  "tum_alle_common_msgs/srvGetDepth")