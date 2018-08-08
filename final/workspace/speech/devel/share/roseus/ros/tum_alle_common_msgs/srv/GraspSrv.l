;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::GraspSrv)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'GraspSrv (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::GRASPSRV")
  (make-package "TUM_ALLE_COMMON_MSGS::GRASPSRV"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::GRASPSRVREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::GRASPSRVREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::GRASPSRVRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::GRASPSRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tum_alle_common_msgs::GraspSrvRequest
  :super ros::object
  :slots (_pose _width ))

(defmethod tum_alle_common_msgs::GraspSrvRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:width __width) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _width __width)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:width
   (&rest __width)
   (if (keywordp (car __width))
       (send* _width __width)
     (progn
       (if __width (setq _width (car __width)))
       _width)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; std_msgs/Float64 _width
    (send _width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; std_msgs/Float64 _width
       (send _width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; std_msgs/Float64 _width
     (send _width :deserialize buf ptr-) (incf ptr- (send _width :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::GraspSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod tum_alle_common_msgs::GraspSrvResponse
  (:init
   (&key
    ((:result __result) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::GraspSrv
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::GraspSrv :md5sum-) "eb6b24b70493bc0e6f3fea29f413d1f1")
(setf (get tum_alle_common_msgs::GraspSrv :datatype-) "tum_alle_common_msgs/GraspSrv")
(setf (get tum_alle_common_msgs::GraspSrv :request) tum_alle_common_msgs::GraspSrvRequest)
(setf (get tum_alle_common_msgs::GraspSrv :response) tum_alle_common_msgs::GraspSrvResponse)

(defmethod tum_alle_common_msgs::GraspSrvRequest
  (:response () (instance tum_alle_common_msgs::GraspSrvResponse :init)))

(setf (get tum_alle_common_msgs::GraspSrvRequest :md5sum-) "eb6b24b70493bc0e6f3fea29f413d1f1")
(setf (get tum_alle_common_msgs::GraspSrvRequest :datatype-) "tum_alle_common_msgs/GraspSrvRequest")
(setf (get tum_alle_common_msgs::GraspSrvRequest :definition-)
      "geometry_msgs/PoseStamped pose
std_msgs/Float64 width

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

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Bool result


================================================================================
MSG: std_msgs/Bool
")

(setf (get tum_alle_common_msgs::GraspSrvResponse :md5sum-) "eb6b24b70493bc0e6f3fea29f413d1f1")
(setf (get tum_alle_common_msgs::GraspSrvResponse :datatype-) "tum_alle_common_msgs/GraspSrvResponse")
(setf (get tum_alle_common_msgs::GraspSrvResponse :definition-)
      "geometry_msgs/PoseStamped pose
std_msgs/Float64 width

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

================================================================================
MSG: std_msgs/Float64
---
std_msgs/Bool result


================================================================================
MSG: std_msgs/Bool
")



(provide :tum_alle_common_msgs/GraspSrv "eb6b24b70493bc0e6f3fea29f413d1f1")


