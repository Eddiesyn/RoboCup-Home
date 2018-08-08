;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msg3DRecognition)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msg3DRecognition (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSG3DRECOGNITION")
  (make-package "TUM_ALLE_COMMON_MSGS::MSG3DRECOGNITION"))

(in-package "ROS")
;;//! \htmlinclude msg3DRecognition.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass tum_alle_common_msgs::msg3DRecognition
  :super ros::object
  :slots (_image _depth_image _transform _predictions2D _predictions3D ))

(defmethod tum_alle_common_msgs::msg3DRecognition
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:depth_image __depth_image) (instance sensor_msgs::Image :init))
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:predictions2D __predictions2D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
    ((:predictions3D __predictions3D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _image __image)
   (setq _depth_image __depth_image)
   (setq _transform __transform)
   (setq _predictions2D __predictions2D)
   (setq _predictions3D __predictions3D)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:depth_image
   (&rest __depth_image)
   (if (keywordp (car __depth_image))
       (send* _depth_image __depth_image)
     (progn
       (if __depth_image (setq _depth_image (car __depth_image)))
       _depth_image)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:predictions2D
   (&rest __predictions2D)
   (if (keywordp (car __predictions2D))
       (send* _predictions2D __predictions2D)
     (progn
       (if __predictions2D (setq _predictions2D (car __predictions2D)))
       _predictions2D)))
  (:predictions3D
   (&rest __predictions3D)
   (if (keywordp (car __predictions3D))
       (send* _predictions3D __predictions3D)
     (progn
       (if __predictions3D (setq _predictions3D (car __predictions3D)))
       _predictions3D)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/Image _depth_image
    (send _depth_image :serialization-length)
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
    (apply #'+ (send-all _predictions2D :serialization-length)) 4
    ;; tum_alle_common_msgs/msg3DPrediction[] _predictions3D
    (apply #'+ (send-all _predictions3D :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/Image _depth_image
       (send _depth_image :serialize s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
     (write-long (length _predictions2D) s)
     (dolist (elem _predictions2D)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msg3DPrediction[] _predictions3D
     (write-long (length _predictions3D) s)
     (dolist (elem _predictions3D)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _depth_image
     (send _depth_image :deserialize buf ptr-) (incf ptr- (send _depth_image :serialization-length))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; tum_alle_common_msgs/msg2DPrediction[] _predictions2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions2D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
     (dolist (elem- _predictions2D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msg3DPrediction[] _predictions3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions3D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
     (dolist (elem- _predictions3D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msg3DRecognition :md5sum-) "2fc33243fc44bdd87226013491c4ef2a")
(setf (get tum_alle_common_msgs::msg3DRecognition :datatype-) "tum_alle_common_msgs/msg3DRecognition")
(setf (get tum_alle_common_msgs::msg3DRecognition :definition-)
      "sensor_msgs/Image       image
sensor_msgs/Image       depth_image
geometry_msgs/Transform transform
msg2DPrediction[]       predictions2D
msg3DPrediction[]       predictions3D

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
MSG: tum_alle_common_msgs/msg2DPrediction
string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers

================================================================================
MSG: tum_alle_common_msgs/msg3DPrediction
string                      frame
geometry_msgs/PointStamped  point
geometry_msgs/Vector3       size
string                      label
float32                     confidence

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



(provide :tum_alle_common_msgs/msg3DRecognition "2fc33243fc44bdd87226013491c4ef2a")


