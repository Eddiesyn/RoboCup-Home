;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Boxes)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Boxes (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::BOXES")
  (make-package "ALL_MSGS::BOXES"))

(in-package "ROS")
;;//! \htmlinclude Boxes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass all_msgs::Boxes
  :super ros::object
  :slots (_header _Boxes ))

(defmethod all_msgs::Boxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Boxes __Boxes) (let (r) (dotimes (i 0) (push (instance all_msgs::Box :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Boxes __Boxes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Boxes
   (&rest __Boxes)
   (if (keywordp (car __Boxes))
       (send* _Boxes __Boxes)
     (progn
       (if __Boxes (setq _Boxes (car __Boxes)))
       _Boxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; all_msgs/Box[] _Boxes
    (apply #'+ (send-all _Boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; all_msgs/Box[] _Boxes
     (write-long (length _Boxes) s)
     (dolist (elem _Boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; all_msgs/Box[] _Boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Boxes (let (r) (dotimes (i n) (push (instance all_msgs::Box :init) r)) r))
     (dolist (elem- _Boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get all_msgs::Boxes :md5sum-) "4e6d6625d0cf4ae9acd2f65688e673d2")
(setf (get all_msgs::Boxes :datatype-) "all_msgs/Boxes")
(setf (get all_msgs::Boxes :definition-)
      "Header header
Box[] Boxes

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
MSG: all_msgs/Box
Header header
string id
float64 probability
int32 x
int32 y
int32 height
int32 width

")



(provide :all_msgs/Boxes "4e6d6625d0cf4ae9acd2f65688e673d2")


