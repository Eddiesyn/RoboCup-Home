;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msgGraspInfo)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msgGraspInfo (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSGGRASPINFO")
  (make-package "TUM_ALLE_COMMON_MSGS::MSGGRASPINFO"))

(in-package "ROS")
;;//! \htmlinclude msgGraspInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::msgGraspInfo
  :super ros::object
  :slots (_label _grasp_type _direction _width _shelf_level _pose ))

(defmethod tum_alle_common_msgs::msgGraspInfo
  (:init
   (&key
    ((:label __label) "")
    ((:grasp_type __grasp_type) "")
    ((:direction __direction) "")
    ((:width __width) 0.0)
    ((:shelf_level __shelf_level) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _grasp_type (string __grasp_type))
   (setq _direction (string __direction))
   (setq _width (float __width))
   (setq _shelf_level (round __shelf_level))
   (setq _pose __pose)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:grasp_type
   (&optional __grasp_type)
   (if __grasp_type (setq _grasp_type __grasp_type)) _grasp_type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:shelf_level
   (&optional __shelf_level)
   (if __shelf_level (setq _shelf_level __shelf_level)) _shelf_level)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; string _grasp_type
    4 (length _grasp_type)
    ;; string _direction
    4 (length _direction)
    ;; float64 _width
    8
    ;; int32 _shelf_level
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _grasp_type
       (write-long (length _grasp_type) s) (princ _grasp_type s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _shelf_level
       (write-long _shelf_level s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _grasp_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grasp_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _shelf_level
     (setq _shelf_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msgGraspInfo :md5sum-) "1f9e4c4658b1594351f757655114b79f")
(setf (get tum_alle_common_msgs::msgGraspInfo :datatype-) "tum_alle_common_msgs/msgGraspInfo")
(setf (get tum_alle_common_msgs::msgGraspInfo :definition-)
      "string label
string grasp_type
string direction
float64 width
int32 shelf_level
geometry_msgs/PoseStamped pose
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

")



(provide :tum_alle_common_msgs/msgGraspInfo "1f9e4c4658b1594351f757655114b79f")


