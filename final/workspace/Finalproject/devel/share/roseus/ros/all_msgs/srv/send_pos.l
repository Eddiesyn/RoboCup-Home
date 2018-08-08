;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::send_pos)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'send_pos (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::SEND_POS")
  (make-package "ALL_MSGS::SEND_POS"))
(unless (find-package "ALL_MSGS::SEND_POSREQUEST")
  (make-package "ALL_MSGS::SEND_POSREQUEST"))
(unless (find-package "ALL_MSGS::SEND_POSRESPONSE")
  (make-package "ALL_MSGS::SEND_POSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass all_msgs::send_posRequest
  :super ros::object
  :slots (_world_pose _is_target ))

(defmethod all_msgs::send_posRequest
  (:init
   (&key
    ((:world_pose __world_pose) (instance geometry_msgs::PointStamped :init))
    ((:is_target __is_target) nil)
    )
   (send-super :init)
   (setq _world_pose __world_pose)
   (setq _is_target __is_target)
   self)
  (:world_pose
   (&rest __world_pose)
   (if (keywordp (car __world_pose))
       (send* _world_pose __world_pose)
     (progn
       (if __world_pose (setq _world_pose (car __world_pose)))
       _world_pose)))
  (:is_target
   (&optional __is_target)
   (if __is_target (setq _is_target __is_target)) _is_target)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped _world_pose
    (send _world_pose :serialization-length)
    ;; bool _is_target
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped _world_pose
       (send _world_pose :serialize s)
     ;; bool _is_target
       (if _is_target (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped _world_pose
     (send _world_pose :deserialize buf ptr-) (incf ptr- (send _world_pose :serialization-length))
   ;; bool _is_target
     (setq _is_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_msgs::send_posResponse
  :super ros::object
  :slots (_flag ))

(defmethod all_msgs::send_posResponse
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

(defclass all_msgs::send_pos
  :super ros::object
  :slots ())

(setf (get all_msgs::send_pos :md5sum-) "0937dcad83c5429e3efaf62274855790")
(setf (get all_msgs::send_pos :datatype-) "all_msgs/send_pos")
(setf (get all_msgs::send_pos :request) all_msgs::send_posRequest)
(setf (get all_msgs::send_pos :response) all_msgs::send_posResponse)

(defmethod all_msgs::send_posRequest
  (:response () (instance all_msgs::send_posResponse :init)))

(setf (get all_msgs::send_posRequest :md5sum-) "0937dcad83c5429e3efaf62274855790")
(setf (get all_msgs::send_posRequest :datatype-) "all_msgs/send_posRequest")
(setf (get all_msgs::send_posRequest :definition-)
      "geometry_msgs/PointStamped world_pose
bool is_target

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
---
bool flag

")

(setf (get all_msgs::send_posResponse :md5sum-) "0937dcad83c5429e3efaf62274855790")
(setf (get all_msgs::send_posResponse :datatype-) "all_msgs/send_posResponse")
(setf (get all_msgs::send_posResponse :definition-)
      "geometry_msgs/PointStamped world_pose
bool is_target

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
---
bool flag

")



(provide :all_msgs/send_pos "0937dcad83c5429e3efaf62274855790")


