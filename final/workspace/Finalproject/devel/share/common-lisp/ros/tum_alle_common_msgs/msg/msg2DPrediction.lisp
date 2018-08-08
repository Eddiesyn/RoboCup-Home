; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-msg)


;//! \htmlinclude msg2DPrediction.msg.html

(cl:defclass <msg2DPrediction> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (rect
    :reader rect
    :initarg :rect
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass msg2DPrediction (<msg2DPrediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg2DPrediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg2DPrediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-msg:<msg2DPrediction> is deprecated: use tum_alle_common_msgs-msg:msg2DPrediction instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <msg2DPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:label-val is deprecated.  Use tum_alle_common_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <msg2DPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:confidence-val is deprecated.  Use tum_alle_common_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <msg2DPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-msg:rect-val is deprecated.  Use tum_alle_common_msgs-msg:rect instead.")
  (rect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg2DPrediction>) ostream)
  "Serializes a message object of type '<msg2DPrediction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'rect))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg2DPrediction>) istream)
  "Deserializes a message object of type '<msg2DPrediction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'rect) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'rect)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg2DPrediction>)))
  "Returns string type for a message object of type '<msg2DPrediction>"
  "tum_alle_common_msgs/msg2DPrediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg2DPrediction)))
  "Returns string type for a message object of type 'msg2DPrediction"
  "tum_alle_common_msgs/msg2DPrediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg2DPrediction>)))
  "Returns md5sum for a message object of type '<msg2DPrediction>"
  "e72cd172d1661b939105f76a5f0e9bca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg2DPrediction)))
  "Returns md5sum for a message object of type 'msg2DPrediction"
  "e72cd172d1661b939105f76a5f0e9bca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg2DPrediction>)))
  "Returns full string definition for message of type '<msg2DPrediction>"
  (cl:format cl:nil "string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg2DPrediction)))
  "Returns full string definition for message of type 'msg2DPrediction"
  (cl:format cl:nil "string    label~%float64   confidence~%int32[4]  rect~%#geometry_msgs/Point[] object_centers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg2DPrediction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg2DPrediction>))
  "Converts a ROS message object to a list"
  (cl:list 'msg2DPrediction
    (cl:cons ':label (label msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':rect (rect msg))
))
