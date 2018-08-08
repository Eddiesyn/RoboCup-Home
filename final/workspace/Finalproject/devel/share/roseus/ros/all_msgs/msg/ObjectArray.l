;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::ObjectArray)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'ObjectArray (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::OBJECTARRAY")
  (make-package "ALL_MSGS::OBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::ObjectArray
  :super ros::object
  :slots (_header _list ))

(defmethod all_msgs::ObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:list __list) (let (r) (dotimes (i 0) (push (instance all_msgs::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _list __list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; all_msgs/Object[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; all_msgs/Object[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; all_msgs/Object[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance all_msgs::Object :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::ObjectArray :md5sum-) "dbd7f33d9ceb0a43b65a5360ad5f07d2")
(setf (get all_msgs::ObjectArray :datatype-) "all_msgs/ObjectArray")
(setf (get all_msgs::ObjectArray :definition-)
      "Header header
Object[] list

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
MSG: all_msgs/Object
int32 id

geometry_msgs/PointStamped world_pose
geometry_msgs/PointStamped cam_pose

float32 heading
float32 velocity

float32 width
float32 length


float32 semantic_confidence
string semantic_name
uint32 semantic_id

uint32 r
uint32 g
uint32 b

bool is_track
bool is_target

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :all_msgs/ObjectArray "dbd7f33d9ceb0a43b65a5360ad5f07d2")


