;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::send_pose)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'send_pose (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::SEND_POSE")
  (make-package "ALL_MSGS::SEND_POSE"))
(unless (find-package "ALL_MSGS::SEND_POSEREQUEST")
  (make-package "ALL_MSGS::SEND_POSEREQUEST"))
(unless (find-package "ALL_MSGS::SEND_POSERESPONSE")
  (make-package "ALL_MSGS::SEND_POSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass all_msgs::send_poseRequest
  :super ros::object
  :slots (_pose _is_target ))

(defmethod all_msgs::send_poseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:is_target __is_target) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _is_target __is_target)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:is_target
   (&optional __is_target)
   (if __is_target (setq _is_target __is_target)) _is_target)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; bool _is_target
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; bool _is_target
       (if _is_target (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _is_target
     (setq _is_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_msgs::send_poseResponse
  :super ros::object
  :slots (_flag ))

(defmethod all_msgs::send_poseResponse
  (:init
   (&key
    ((:flag __flag) nil)
    )
   (send-super :init)
   (setq _flag __flag)
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_msgs::send_pose
  :super ros::object
  :slots ())

(setf (get all_msgs::send_pose :md5sum-) "054de5c78a71069d7eba0f4079e28d3a")
(setf (get all_msgs::send_pose :datatype-) "all_msgs/send_pose")
(setf (get all_msgs::send_pose :request) all_msgs::send_poseRequest)
(setf (get all_msgs::send_pose :response) all_msgs::send_poseResponse)

(defmethod all_msgs::send_poseRequest
  (:response () (instance all_msgs::send_poseResponse :init)))

(setf (get all_msgs::send_poseRequest :md5sum-) "054de5c78a71069d7eba0f4079e28d3a")
(setf (get all_msgs::send_poseRequest :datatype-) "all_msgs/send_poseRequest")
(setf (get all_msgs::send_poseRequest :definition-)
      "geometry_msgs/PoseStamped pose
bool is_target

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
bool flag

")

(setf (get all_msgs::send_poseResponse :md5sum-) "054de5c78a71069d7eba0f4079e28d3a")
(setf (get all_msgs::send_poseResponse :datatype-) "all_msgs/send_poseResponse")
(setf (get all_msgs::send_poseResponse :definition-)
      "geometry_msgs/PoseStamped pose
bool is_target

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
bool flag

")



(provide :all_msgs/send_pose "054de5c78a71069d7eba0f4079e28d3a")


