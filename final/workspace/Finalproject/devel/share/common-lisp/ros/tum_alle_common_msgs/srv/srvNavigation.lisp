; Auto-generated. Do not edit!


(cl:in-package tum_alle_common_msgs-srv)


;//! \htmlinclude srvNavigation-request.msg.html

(cl:defclass <srvNavigation-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (location_id
    :reader location_id
    :initarg :location_id
    :type cl:string
    :initform "")
   (location_pose
    :reader location_pose
    :initarg :location_pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass srvNavigation-request (<srvNavigation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvNavigation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvNavigation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvNavigation-request> is deprecated: use tum_alle_common_msgs-srv:srvNavigation-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <srvNavigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:command-val is deprecated.  Use tum_alle_common_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'location_id-val :lambda-list '(m))
(cl:defmethod location_id-val ((m <srvNavigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:location_id-val is deprecated.  Use tum_alle_common_msgs-srv:location_id instead.")
  (location_id m))

(cl:ensure-generic-function 'location_pose-val :lambda-list '(m))
(cl:defmethod location_pose-val ((m <srvNavigation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:location_pose-val is deprecated.  Use tum_alle_common_msgs-srv:location_pose instead.")
  (location_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvNavigation-request>) ostream)
  "Serializes a message object of type '<srvNavigation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvNavigation-request>) istream)
  "Deserializes a message object of type '<srvNavigation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvNavigation-request>)))
  "Returns string type for a service object of type '<srvNavigation-request>"
  "tum_alle_common_msgs/srvNavigationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvNavigation-request)))
  "Returns string type for a service object of type 'srvNavigation-request"
  "tum_alle_common_msgs/srvNavigationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvNavigation-request>)))
  "Returns md5sum for a message object of type '<srvNavigation-request>"
  "678835c49305ac0de54f01e826b6f3ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvNavigation-request)))
  "Returns md5sum for a message object of type 'srvNavigation-request"
  "678835c49305ac0de54f01e826b6f3ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvNavigation-request>)))
  "Returns full string definition for message of type '<srvNavigation-request>"
  (cl:format cl:nil "string command~%string location_id~%geometry_msgs/Point location_pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvNavigation-request)))
  "Returns full string definition for message of type 'srvNavigation-request"
  (cl:format cl:nil "string command~%string location_id~%geometry_msgs/Point location_pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvNavigation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'location_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvNavigation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvNavigation-request
    (cl:cons ':command (command msg))
    (cl:cons ':location_id (location_id msg))
    (cl:cons ':location_pose (location_pose msg))
))
;//! \htmlinclude srvNavigation-response.msg.html

(cl:defclass <srvNavigation-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass srvNavigation-response (<srvNavigation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvNavigation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvNavigation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tum_alle_common_msgs-srv:<srvNavigation-response> is deprecated: use tum_alle_common_msgs-srv:srvNavigation-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <srvNavigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tum_alle_common_msgs-srv:status-val is deprecated.  Use tum_alle_common_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvNavigation-response>) ostream)
  "Serializes a message object of type '<srvNavigation-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvNavigation-response>) istream)
  "Deserializes a message object of type '<srvNavigation-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvNavigation-response>)))
  "Returns string type for a service object of type '<srvNavigation-response>"
  "tum_alle_common_msgs/srvNavigationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvNavigation-response)))
  "Returns string type for a service object of type 'srvNavigation-response"
  "tum_alle_common_msgs/srvNavigationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvNavigation-response>)))
  "Returns md5sum for a message object of type '<srvNavigation-response>"
  "678835c49305ac0de54f01e826b6f3ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvNavigation-response)))
  "Returns md5sum for a message object of type 'srvNavigation-response"
  "678835c49305ac0de54f01e826b6f3ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvNavigation-response>)))
  "Returns full string definition for message of type '<srvNavigation-response>"
  (cl:format cl:nil "string status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvNavigation-response)))
  "Returns full string definition for message of type 'srvNavigation-response"
  (cl:format cl:nil "string status~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvNavigation-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvNavigation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvNavigation-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvNavigation)))
  'srvNavigation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvNavigation)))
  'srvNavigation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvNavigation)))
  "Returns string type for a service object of type '<srvNavigation>"
  "tum_alle_common_msgs/srvNavigation")