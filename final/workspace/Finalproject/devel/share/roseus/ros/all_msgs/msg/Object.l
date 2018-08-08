;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::Object)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'Object (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::OBJECT")
  (make-package "ALL_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass all_msgs::Object
  :super ros::object
  :slots (_id _world_pose _cam_pose _heading _velocity _width _length _semantic_confidence _semantic_name _semantic_id _r _g _b _is_track _is_target ))

(defmethod all_msgs::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:world_pose __world_pose) (instance geometry_msgs::PointStamped :init))
    ((:cam_pose __cam_pose) (instance geometry_msgs::PointStamped :init))
    ((:heading __heading) 0.0)
    ((:velocity __velocity) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:semantic_confidence __semantic_confidence) 0.0)
    ((:semantic_name __semantic_name) "")
    ((:semantic_id __semantic_id) 0)
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    ((:is_track __is_track) nil)
    ((:is_target __is_target) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _world_pose __world_pose)
   (setq _cam_pose __cam_pose)
   (setq _heading (float __heading))
   (setq _velocity (float __velocity))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _semantic_confidence (float __semantic_confidence))
   (setq _semantic_name (string __semantic_name))
   (setq _semantic_id (round __semantic_id))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   (setq _is_track __is_track)
   (setq _is_target __is_target)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:world_pose
   (&rest __world_pose)
   (if (keywordp (car __world_pose))
       (send* _world_pose __world_pose)
     (progn
       (if __world_pose (setq _world_pose (car __world_pose)))
       _world_pose)))
  (:cam_pose
   (&rest __cam_pose)
   (if (keywordp (car __cam_pose))
       (send* _cam_pose __cam_pose)
     (progn
       (if __cam_pose (setq _cam_pose (car __cam_pose)))
       _cam_pose)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:semantic_confidence
   (&optional __semantic_confidence)
   (if __semantic_confidence (setq _semantic_confidence __semantic_confidence)) _semantic_confidence)
  (:semantic_name
   (&optional __semantic_name)
   (if __semantic_name (setq _semantic_name __semantic_name)) _semantic_name)
  (:semantic_id
   (&optional __semantic_id)
   (if __semantic_id (setq _semantic_id __semantic_id)) _semantic_id)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:is_track
   (&optional __is_track)
   (if __is_track (setq _is_track __is_track)) _is_track)
  (:is_target
   (&optional __is_target)
   (if __is_target (setq _is_target __is_target)) _is_target)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/PointStamped _world_pose
    (send _world_pose :serialization-length)
    ;; geometry_msgs/PointStamped _cam_pose
    (send _cam_pose :serialization-length)
    ;; float32 _heading
    4
    ;; float32 _velocity
    4
    ;; float32 _width
    4
    ;; float32 _length
    4
    ;; float32 _semantic_confidence
    4
    ;; string _semantic_name
    4 (length _semantic_name)
    ;; uint32 _semantic_id
    4
    ;; uint32 _r
    4
    ;; uint32 _g
    4
    ;; uint32 _b
    4
    ;; bool _is_track
    1
    ;; bool _is_target
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/PointStamped _world_pose
       (send _world_pose :serialize s)
     ;; geometry_msgs/PointStamped _cam_pose
       (send _cam_pose :serialize s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _semantic_confidence
       (sys::poke _semantic_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _semantic_name
       (write-long (length _semantic_name) s) (princ _semantic_name s)
     ;; uint32 _semantic_id
       (write-long _semantic_id s)
     ;; uint32 _r
       (write-long _r s)
     ;; uint32 _g
       (write-long _g s)
     ;; uint32 _b
       (write-long _b s)
     ;; bool _is_track
       (if _is_track (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_target
       (if _is_target (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PointStamped _world_pose
     (send _world_pose :deserialize buf ptr-) (incf ptr- (send _world_pose :serialization-length))
   ;; geometry_msgs/PointStamped _cam_pose
     (send _cam_pose :deserialize buf ptr-) (incf ptr- (send _cam_pose :serialization-length))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _semantic_confidence
     (setq _semantic_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _semantic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _semantic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _semantic_id
     (setq _semantic_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _g
     (setq _g (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_track
     (setq _is_track (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_target
     (setq _is_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get all_msgs::Object :md5sum-) "91171f25471df23310fdf72d759cfc7e")
(setf (get all_msgs::Object :datatype-) "all_msgs/Object")
(setf (get all_msgs::Object :definition-)
      "int32 id

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

")



(provide :all_msgs/Object "91171f25471df23310fdf72d759cfc7e")


