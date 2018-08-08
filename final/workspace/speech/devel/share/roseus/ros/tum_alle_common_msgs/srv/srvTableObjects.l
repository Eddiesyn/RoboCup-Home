;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvTableObjects)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvTableObjects (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTS")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTS"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTSREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTSREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTSRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVTABLEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvTableObjectsRequest
  :super ros::object
  :slots (_pred2D _pred3D ))

(defmethod tum_alle_common_msgs::srvTableObjectsRequest
  (:init
   (&key
    ((:pred2D __pred2D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
    ((:pred3D __pred3D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _pred2D __pred2D)
   (setq _pred3D __pred3D)
   self)
  (:pred2D
   (&rest __pred2D)
   (if (keywordp (car __pred2D))
       (send* _pred2D __pred2D)
     (progn
       (if __pred2D (setq _pred2D (car __pred2D)))
       _pred2D)))
  (:pred3D
   (&rest __pred3D)
   (if (keywordp (car __pred3D))
       (send* _pred3D __pred3D)
     (progn
       (if __pred3D (setq _pred3D (car __pred3D)))
       _pred3D)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
    (apply #'+ (send-all _pred2D :serialization-length)) 4
    ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
    (apply #'+ (send-all _pred3D :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
     (write-long (length _pred2D) s)
     (dolist (elem _pred2D)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
     (write-long (length _pred3D) s)
     (dolist (elem _pred3D)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pred2D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
     (dolist (elem- _pred2D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pred3D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
     (dolist (elem- _pred3D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvTableObjectsResponse
  :super ros::object
  :slots (_success ))

(defmethod tum_alle_common_msgs::srvTableObjectsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvTableObjects
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvTableObjects :md5sum-) "a1ce48b3803e21bee5394bd8790e6e04")
(setf (get tum_alle_common_msgs::srvTableObjects :datatype-) "tum_alle_common_msgs/srvTableObjects")
(setf (get tum_alle_common_msgs::srvTableObjects :request) tum_alle_common_msgs::srvTableObjectsRequest)
(setf (get tum_alle_common_msgs::srvTableObjects :response) tum_alle_common_msgs::srvTableObjectsResponse)

(defmethod tum_alle_common_msgs::srvTableObjectsRequest
  (:response () (instance tum_alle_common_msgs::srvTableObjectsResponse :init)))

(setf (get tum_alle_common_msgs::srvTableObjectsRequest :md5sum-) "a1ce48b3803e21bee5394bd8790e6e04")
(setf (get tum_alle_common_msgs::srvTableObjectsRequest :datatype-) "tum_alle_common_msgs/srvTableObjectsRequest")
(setf (get tum_alle_common_msgs::srvTableObjectsRequest :definition-)
      "msg2DPrediction[] pred2D
msg3DPrediction[] pred3D

================================================================================
MSG: tum_alle_common_msgs/msg2DPrediction
string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers

================================================================================
MSG: tum_alle_common_msgs/msg3DPrediction
string                      frame
geometry_msgs/PointStamped  point
geometry_msgs/Vector3       size
string                      label
float32                     confidence

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool              success

")

(setf (get tum_alle_common_msgs::srvTableObjectsResponse :md5sum-) "a1ce48b3803e21bee5394bd8790e6e04")
(setf (get tum_alle_common_msgs::srvTableObjectsResponse :datatype-) "tum_alle_common_msgs/srvTableObjectsResponse")
(setf (get tum_alle_common_msgs::srvTableObjectsResponse :definition-)
      "msg2DPrediction[] pred2D
msg3DPrediction[] pred3D

================================================================================
MSG: tum_alle_common_msgs/msg2DPrediction
string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers

================================================================================
MSG: tum_alle_common_msgs/msg3DPrediction
string                      frame
geometry_msgs/PointStamped  point
geometry_msgs/Vector3       size
string                      label
float32                     confidence

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool              success

")



(provide :tum_alle_common_msgs/srvTableObjects "a1ce48b3803e21bee5394bd8790e6e04")


