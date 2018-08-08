; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msgFreeSpace.msg.html

(cl:defclass <msgFreeSpace> (roslisp-msg-protocol:ros-message)
  ((corners
    :reader corners
    :initarg :corners
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass msgFreeSpace (<msgFreeSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgFreeSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgFreeSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msgFreeSpace> is deprecated: use tum_alle_common_msgs-msg:msgFreeSpace instead.")))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <msgFreeSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:corners-val is deprecated.  Use tum_alle_common_msgs-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgFreeSpace>) ostream)
  "Serializes a message object of type '<msgFreeSpace>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgFreeSpace>) istream)
  "Deserializes a message object of type '<msgFreeSpace>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgFreeSpace>)))
  "Returns string type for a message object of type '<msgFreeSpace>"
  "tum_alle_common_msgs/msgFreeSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgFreeSpace)))
  "Returns string type for a message object of type 'msgFreeSpace"
  "tum_alle_common_msgs/msgFreeSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgFreeSpace>)))
  "Returns md5sum for a message object of type '<msgFreeSpace>"
  "a0e200474a3819c8499cd604fce8e114")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgFreeSpace)))
  "Returns md5sum for a message object of type 'msgFreeSpace"
  "a0e200474a3819c8499cd604fce8e114")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgFreeSpace>)))
  "Returns full string definition for message of type '<msgFreeSpace>"
  (cl:format cl:nil "geometry_msgs/Point[] 	corners~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgFreeSpace)))
  "Returns full string definition for message of type 'msgFreeSpace"
  (cl:format cl:nil "geometry_msgs/Point[] 	corners~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgFreeSpace>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgFreeSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'msgFreeSpace
    (cl:cons ':corners (corners msg))
))
