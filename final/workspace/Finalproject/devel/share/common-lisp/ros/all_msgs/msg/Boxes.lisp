; Auto-generated. Do not edit!


(cl:in-package all_msgs-msg)


;//! \htmlinclude Boxes.msg.html

(cl:defclass <Boxes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Boxes
    :reader Boxes
    :initarg :Boxes
    :type (cl:vector all_msgs-msg:Box)
   :initform (cl:make-array 0 :element-type 'all_msgs-msg:Box :initial-element (cl:make-instance 'all_msgs-msg:Box))))
)

(cl:defclass Boxes (<Boxes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Boxes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Boxes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_msgs-msg:<Boxes> is deprecated: use all_msgs-msg:Boxes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:header-val is deprecated.  Use all_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Boxes-val :lambda-list '(m))
(cl:defmethod Boxes-val ((m <Boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_msgs-msg:Boxes-val is deprecated.  Use all_msgs-msg:Boxes instead.")
  (Boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Boxes>) ostream)
  "Serializes a message object of type '<Boxes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Boxes>) istream)
  "Deserializes a message object of type '<Boxes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'all_msgs-msg:Box))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Boxes>)))
  "Returns string type for a message object of type '<Boxes>"
  "all_msgs/Boxes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Boxes)))
  "Returns string type for a message object of type 'Boxes"
  "all_msgs/Boxes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Boxes>)))
  "Returns md5sum for a message object of type '<Boxes>"
  "4e6d6625d0cf4ae9acd2f65688e673d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Boxes)))
  "Returns md5sum for a message object of type 'Boxes"
  "4e6d6625d0cf4ae9acd2f65688e673d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Boxes>)))
  "Returns full string definition for message of type '<Boxes>"
  (cl:format cl:nil "Header header~%Box[] Boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: all_msgs/Box~%Header header~%string id~%float64 probability~%int32 x~%int32 y~%int32 height~%int32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Boxes)))
  "Returns full string definition for message of type 'Boxes"
  (cl:format cl:nil "Header header~%Box[] Boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: all_msgs/Box~%Header header~%string id~%float64 probability~%int32 x~%int32 y~%int32 height~%int32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Boxes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Boxes>))
  "Converts a ROS message object to a list"
  (cl:list 'Boxes
    (cl:cons ':header (header msg))
    (cl:cons ':Boxes (Boxes msg))
))
