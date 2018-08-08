; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvGetFreeSpaces-request.msg.html

(cl:defclass <srvGetFreeSpaces-request> (roslisp-msg-protocol:ros-message)
  ((left_of
    :reader left_of
    :initarg :left_of
    :type (cl:vector tum_alle_common_msgs-msg:msgFreeSpace)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msgFreeSpace :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msgFreeSpace)))
   (right_of
    :reader right_of
    :initarg :right_of
    :type (cl:vector tum_alle_common_msgs-msg:msgFreeSpace)
   :initform (cl:make-array 0 :element-type 'tum_alle_common_msgs-msg:msgFreeSpace :initial-element (cl:make-instance 'tum_alle_common_msgs-msg:msgFreeSpace))))
)

(cl:defclass srvGetFreeSpaces-request (<srvGetFreeSpaces-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetFreeSpaces-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetFreeSpaces-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetFreeSpaces-request> is deprecated: use tum_alle_common_msgs-srv:srvGetFreeSpaces-request instead.")))

(cl:ensure-generic-function 'left_of-val :lambda-list '(m))
(cl:defmethod left_of-val ((m <srvGetFreeSpaces-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:left_of-val is deprecated.  Use tum_alle_common_msgs-srv:left_of instead.")
  (left_of m))

(cl:ensure-generic-function 'right_of-val :lambda-list '(m))
(cl:defmethod right_of-val ((m <srvGetFreeSpaces-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:right_of-val is deprecated.  Use tum_alle_common_msgs-srv:right_of instead.")
  (right_of m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetFreeSpaces-request>) ostream)
  "Serializes a message object of type '<srvGetFreeSpaces-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_of))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_of))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_of))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetFreeSpaces-request>) istream)
  "Deserializes a message object of type '<srvGetFreeSpaces-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msgFreeSpace))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_of) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_of)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tum_alle_common_msgs-msg:msgFreeSpace))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetFreeSpaces-request>)))
  "Returns string type for a service object of type '<srvGetFreeSpaces-request>"
  "tum_alle_common_msgs/srvGetFreeSpacesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetFreeSpaces-request)))
  "Returns string type for a service object of type 'srvGetFreeSpaces-request"
  "tum_alle_common_msgs/srvGetFreeSpacesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetFreeSpaces-request>)))
  "Returns md5sum for a message object of type '<srvGetFreeSpaces-request>"
  "22e0f6037d1e4f620ad89e16963171eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetFreeSpaces-request)))
  "Returns md5sum for a message object of type 'srvGetFreeSpaces-request"
  "22e0f6037d1e4f620ad89e16963171eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetFreeSpaces-request>)))
  "Returns full string definition for message of type '<srvGetFreeSpaces-request>"
  (cl:format cl:nil "msgFreeSpace[] left_of~%msgFreeSpace[] right_of~%~%================================================================================~%MSG: tum_alle_common_msgs/msgFreeSpace~%geometry_msgs/Point[] 	corners~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetFreeSpaces-request)))
  "Returns full string definition for message of type 'srvGetFreeSpaces-request"
  (cl:format cl:nil "msgFreeSpace[] left_of~%msgFreeSpace[] right_of~%~%================================================================================~%MSG: tum_alle_common_msgs/msgFreeSpace~%geometry_msgs/Point[] 	corners~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetFreeSpaces-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_of) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetFreeSpaces-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetFreeSpaces-request
    (cl:cons ':left_of (left_of msg))
    (cl:cons ':right_of (right_of msg))
))
;//! \htmlinclude srvGetFreeSpaces-response.msg.html

(cl:defclass <srvGetFreeSpaces-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass srvGetFreeSpaces-response (<srvGetFreeSpaces-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvGetFreeSpaces-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvGetFreeSpaces-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvGetFreeSpaces-response> is deprecated: use tum_alle_common_msgs-srv:srvGetFreeSpaces-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <srvGetFreeSpaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:success-val is deprecated.  Use tum_alle_common_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvGetFreeSpaces-response>) ostream)
  "Serializes a message object of type '<srvGetFreeSpaces-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvGetFreeSpaces-response>) istream)
  "Deserializes a message object of type '<srvGetFreeSpaces-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvGetFreeSpaces-response>)))
  "Returns string type for a service object of type '<srvGetFreeSpaces-response>"
  "tum_alle_common_msgs/srvGetFreeSpacesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetFreeSpaces-response)))
  "Returns string type for a service object of type 'srvGetFreeSpaces-response"
  "tum_alle_common_msgs/srvGetFreeSpacesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvGetFreeSpaces-response>)))
  "Returns md5sum for a message object of type '<srvGetFreeSpaces-response>"
  "22e0f6037d1e4f620ad89e16963171eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvGetFreeSpaces-response)))
  "Returns md5sum for a message object of type 'srvGetFreeSpaces-response"
  "22e0f6037d1e4f620ad89e16963171eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvGetFreeSpaces-response>)))
  "Returns full string definition for message of type '<srvGetFreeSpaces-response>"
  (cl:format cl:nil "bool           success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvGetFreeSpaces-response)))
  "Returns full string definition for message of type 'srvGetFreeSpaces-response"
  (cl:format cl:nil "bool           success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvGetFreeSpaces-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvGetFreeSpaces-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvGetFreeSpaces-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvGetFreeSpaces)))
  'srvGetFreeSpaces-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvGetFreeSpaces)))
  'srvGetFreeSpaces-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvGetFreeSpaces)))
  "Returns string type for a service object of type '<srvGetFreeSpaces>"
  "tum_alle_common_msgs/srvGetFreeSpaces")