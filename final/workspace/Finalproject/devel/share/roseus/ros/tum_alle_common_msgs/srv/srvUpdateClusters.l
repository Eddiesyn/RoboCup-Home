;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvUpdateClusters)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvUpdateClusters (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERS")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERS"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERSREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERSREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERSRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVUPDATECLUSTERSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass tum_alle_common_msgs::srvUpdateClustersRequest
  :super ros::object
  :slots (_cluster_name _pose _width ))

(defmethod tum_alle_common_msgs::srvUpdateClustersRequest
  (:init
   (&key
    ((:cluster_name __cluster_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _cluster_name (string __cluster_name))
   (setq _pose __pose)
   (setq _width (float __width))
   self)
  (:cluster_name
   (&optional __cluster_name)
   (if __cluster_name (setq _cluster_name __cluster_name)) _cluster_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; string _cluster_name
    4 (length _cluster_name)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cluster_name
       (write-long (length _cluster_name) s) (princ _cluster_name s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cluster_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cluster_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvUpdateClustersResponse
  :super ros::object
  :slots (_result ))

(defmethod tum_alle_common_msgs::srvUpdateClustersResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvUpdateClusters
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvUpdateClusters :md5sum-) "93a02a6f845c7e0038a223d54e7006b7")
(setf (get tum_alle_common_msgs::srvUpdateClusters :datatype-) "tum_alle_common_msgs/srvUpdateClusters")
(setf (get tum_alle_common_msgs::srvUpdateClusters :request) tum_alle_common_msgs::srvUpdateClustersRequest)
(setf (get tum_alle_common_msgs::srvUpdateClusters :response) tum_alle_common_msgs::srvUpdateClustersResponse)

(defmethod tum_alle_common_msgs::srvUpdateClustersRequest
  (:response () (instance tum_alle_common_msgs::srvUpdateClustersResponse :init)))

(setf (get tum_alle_common_msgs::srvUpdateClustersRequest :md5sum-) "93a02a6f845c7e0038a223d54e7006b7")
(setf (get tum_alle_common_msgs::srvUpdateClustersRequest :datatype-) "tum_alle_common_msgs/srvUpdateClustersRequest")
(setf (get tum_alle_common_msgs::srvUpdateClustersRequest :definition-)
      "string cluster_name
geometry_msgs/PoseStamped pose
float32 width

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")

(setf (get tum_alle_common_msgs::srvUpdateClustersResponse :md5sum-) "93a02a6f845c7e0038a223d54e7006b7")
(setf (get tum_alle_common_msgs::srvUpdateClustersResponse :datatype-) "tum_alle_common_msgs/srvUpdateClustersResponse")
(setf (get tum_alle_common_msgs::srvUpdateClustersResponse :definition-)
      "string cluster_name
geometry_msgs/PoseStamped pose
float32 width

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")



(provide :tum_alle_common_msgs/srvUpdateClusters "93a02a6f845c7e0038a223d54e7006b7")


