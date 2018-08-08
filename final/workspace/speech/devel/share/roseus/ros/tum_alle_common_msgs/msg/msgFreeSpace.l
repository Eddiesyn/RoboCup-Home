;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msgFreeSpace)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msgFreeSpace (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSGFREESPACE")
  (make-package "TUM_ALLE_COMMON_MSGS::MSGFREESPACE"))

(in-package "ROS")
;;//! \htmlinclude msgFreeSpace.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::msgFreeSpace
  :super ros::object
  :slots (_corners ))

(defmethod tum_alle_common_msgs::msgFreeSpace
  (:init
   (&key
    ((:corners __corners) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _corners __corners)
   self)
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msgFreeSpace :md5sum-) "a0e200474a3819c8499cd604fce8e114")
(setf (get tum_alle_common_msgs::msgFreeSpace :datatype-) "tum_alle_common_msgs/msgFreeSpace")
(setf (get tum_alle_common_msgs::msgFreeSpace :definition-)
      "geometry_msgs/Point[] 	corners

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tum_alle_common_msgs/msgFreeSpace "a0e200474a3819c8499cd604fce8e114")


