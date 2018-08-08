;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msg3DTracking)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msg3DTracking (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSG3DTRACKING")
  (make-package "TUM_ALLE_COMMON_MSGS::MSG3DTRACKING"))

(in-package "ROS")
;;//! \htmlinclude msg3DTracking.msg.html


(defclass tum_alle_common_msgs::msg3DTracking
  :super ros::object
  :slots (_tracked_id _ids _predictions2D _predictions ))

(defmethod tum_alle_common_msgs::msg3DTracking
  (:init
   (&key
    ((:tracked_id __tracked_id) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:predictions2D __predictions2D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
    ((:predictions __predictions) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _tracked_id (round __tracked_id))
   (setq _ids __ids)
   (setq _predictions2D __predictions2D)
   (setq _predictions __predictions)
   self)
  (:tracked_id
   (&optional __tracked_id)
   (if __tracked_id (setq _tracked_id __tracked_id)) _tracked_id)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:predictions2D
   (&rest __predictions2D)
   (if (keywordp (car __predictions2D))
       (send* _predictions2D __predictions2D)
     (progn
       (if __predictions2D (setq _predictions2D (car __predictions2D)))
       _predictions2D)))
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:serialization-length
   ()
   (+
    ;; int32 _tracked_id
    4
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
    (apply #'+ (send-all _predictions2D :serialization-length)) 4
    ;; tum_alle_common_msgs/msg3DPrediction[] _predictions
    (apply #'+ (send-all _predictions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tracked_id
       (write-long _tracked_id s)
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
     (write-long (length _predictions2D) s)
     (dolist (elem _predictions2D)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msg3DPrediction[] _predictions
     (write-long (length _predictions) s)
     (dolist (elem _predictions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tracked_id
     (setq _tracked_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions2D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
     (dolist (elem- _predictions2D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msg3DPrediction[] _predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
     (dolist (elem- _predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msg3DTracking :md5sum-) "e2d4dcf1d4d32e9b2837927ad118d684")
(setf (get tum_alle_common_msgs::msg3DTracking :datatype-) "tum_alle_common_msgs/msg3DTracking")
(setf (get tum_alle_common_msgs::msg3DTracking :definition-)
      "int32                     tracked_id
int32[]                   ids
msg2DPrediction[]         predictions2D
msg3DPrediction[]         predictions

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
float64 z
")



(provide :tum_alle_common_msgs/msg3DTracking "e2d4dcf1d4d32e9b2837927ad118d684")


