;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvObjectNavigation)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvObjectNavigation (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATION")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATION"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATIONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATIONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATIONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTNAVIGATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::srvObjectNavigationRequest
  :super ros::object
  :slots (_command _object_id ))

(defmethod tum_alle_common_msgs::srvObjectNavigationRequest
  (:init
   (&key
    ((:command __command) "")
    ((:object_id __object_id) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _object_id (string __object_id))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _object_id
    4 (length _object_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _object_id
       (write-long (length _object_id) s) (princ _object_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvObjectNavigationResponse
  :super ros::object
  :slots (_point ))

(defmethod tum_alle_common_msgs::srvObjectNavigationResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvObjectNavigation
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvObjectNavigation :md5sum-) "2042acb7285e51f109192acb95ddf739")
(setf (get tum_alle_common_msgs::srvObjectNavigation :datatype-) "tum_alle_common_msgs/srvObjectNavigation")
(setf (get tum_alle_common_msgs::srvObjectNavigation :request) tum_alle_common_msgs::srvObjectNavigationRequest)
(setf (get tum_alle_common_msgs::srvObjectNavigation :response) tum_alle_common_msgs::srvObjectNavigationResponse)

(defmethod tum_alle_common_msgs::srvObjectNavigationRequest
  (:response () (instance tum_alle_common_msgs::srvObjectNavigationResponse :init)))

(setf (get tum_alle_common_msgs::srvObjectNavigationRequest :md5sum-) "2042acb7285e51f109192acb95ddf739")
(setf (get tum_alle_common_msgs::srvObjectNavigationRequest :datatype-) "tum_alle_common_msgs/srvObjectNavigationRequest")
(setf (get tum_alle_common_msgs::srvObjectNavigationRequest :definition-)
      "string command
string object_id
---
geometry_msgs/PointStamped point


================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get tum_alle_common_msgs::srvObjectNavigationResponse :md5sum-) "2042acb7285e51f109192acb95ddf739")
(setf (get tum_alle_common_msgs::srvObjectNavigationResponse :datatype-) "tum_alle_common_msgs/srvObjectNavigationResponse")
(setf (get tum_alle_common_msgs::srvObjectNavigationResponse :definition-)
      "string command
string object_id
---
geometry_msgs/PointStamped point


================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :tum_alle_common_msgs/srvObjectNavigation "2042acb7285e51f109192acb95ddf739")


