;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvCupboardOrientation)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvCupboardOrientation (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATION")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATION"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATIONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATIONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATIONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDORIENTATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::srvCupboardOrientationRequest
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::srvCupboardOrientationRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvCupboardOrientationResponse
  :super ros::object
  :slots (_cupboard_pose ))

(defmethod tum_alle_common_msgs::srvCupboardOrientationResponse
  (:init
   (&key
    ((:cupboard_pose __cupboard_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _cupboard_pose __cupboard_pose)
   self)
  (:cupboard_pose
   (&rest __cupboard_pose)
   (if (keywordp (car __cupboard_pose))
       (send* _cupboard_pose __cupboard_pose)
     (progn
       (if __cupboard_pose (setq _cupboard_pose (car __cupboard_pose)))
       _cupboard_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _cupboard_pose
    (send _cupboard_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _cupboard_pose
       (send _cupboard_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _cupboard_pose
     (send _cupboard_pose :deserialize buf ptr-) (incf ptr- (send _cupboard_pose :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvCupboardOrientation
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvCupboardOrientation :md5sum-) "53c6fb80ff67f1c304b20833f46e6c0d")
(setf (get tum_alle_common_msgs::srvCupboardOrientation :datatype-) "tum_alle_common_msgs/srvCupboardOrientation")
(setf (get tum_alle_common_msgs::srvCupboardOrientation :request) tum_alle_common_msgs::srvCupboardOrientationRequest)
(setf (get tum_alle_common_msgs::srvCupboardOrientation :response) tum_alle_common_msgs::srvCupboardOrientationResponse)

(defmethod tum_alle_common_msgs::srvCupboardOrientationRequest
  (:response () (instance tum_alle_common_msgs::srvCupboardOrientationResponse :init)))

(setf (get tum_alle_common_msgs::srvCupboardOrientationRequest :md5sum-) "53c6fb80ff67f1c304b20833f46e6c0d")
(setf (get tum_alle_common_msgs::srvCupboardOrientationRequest :datatype-) "tum_alle_common_msgs/srvCupboardOrientationRequest")
(setf (get tum_alle_common_msgs::srvCupboardOrientationRequest :definition-)
      "string                    command
---
geometry_msgs/PoseStamped cupboard_pose


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

(setf (get tum_alle_common_msgs::srvCupboardOrientationResponse :md5sum-) "53c6fb80ff67f1c304b20833f46e6c0d")
(setf (get tum_alle_common_msgs::srvCupboardOrientationResponse :datatype-) "tum_alle_common_msgs/srvCupboardOrientationResponse")
(setf (get tum_alle_common_msgs::srvCupboardOrientationResponse :definition-)
      "string                    command
---
geometry_msgs/PoseStamped cupboard_pose


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



(provide :tum_alle_common_msgs/srvCupboardOrientation "53c6fb80ff67f1c304b20833f46e6c0d")


