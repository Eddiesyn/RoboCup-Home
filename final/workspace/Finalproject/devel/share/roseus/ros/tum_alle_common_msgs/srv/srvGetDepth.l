;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvGetDepth)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvGetDepth (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTH")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTH"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTHREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTHREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTHRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETDEPTHRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass tum_alle_common_msgs::srvGetDepthRequest
  :super ros::object
  :slots (_depth_image _prediction2D ))

(defmethod tum_alle_common_msgs::srvGetDepthRequest
  (:init
   (&key
    ((:depth_image __depth_image) (instance sensor_msgs::Image :init))
    ((:prediction2D __prediction2D) (instance tum_alle_common_msgs::msg2DPrediction :init))
    )
   (send-super :init)
   (setq _depth_image __depth_image)
   (setq _prediction2D __prediction2D)
   self)
  (:depth_image
   (&rest __depth_image)
   (if (keywordp (car __depth_image))
       (send* _depth_image __depth_image)
     (progn
       (if __depth_image (setq _depth_image (car __depth_image)))
       _depth_image)))
  (:prediction2D
   (&rest __prediction2D)
   (if (keywordp (car __prediction2D))
       (send* _prediction2D __prediction2D)
     (progn
       (if __prediction2D (setq _prediction2D (car __prediction2D)))
       _prediction2D)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _depth_image
    (send _depth_image :serialization-length)
    ;; tum_alle_common_msgs/msg2DPrediction _prediction2D
    (send _prediction2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _depth_image
       (send _depth_image :serialize s)
     ;; tum_alle_common_msgs/msg2DPrediction _prediction2D
       (send _prediction2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _depth_image
     (send _depth_image :deserialize buf ptr-) (incf ptr- (send _depth_image :serialization-length))
   ;; tum_alle_common_msgs/msg2DPrediction _prediction2D
     (send _prediction2D :deserialize buf ptr-) (incf ptr- (send _prediction2D :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetDepthResponse
  :super ros::object
  :slots (_depth ))

(defmethod tum_alle_common_msgs::srvGetDepthResponse
  (:init
   (&key
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _depth (float __depth))
   self)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; float32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetDepth
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvGetDepth :md5sum-) "ff32a7ec5d38344a7d257eee320c2c21")
(setf (get tum_alle_common_msgs::srvGetDepth :datatype-) "tum_alle_common_msgs/srvGetDepth")
(setf (get tum_alle_common_msgs::srvGetDepth :request) tum_alle_common_msgs::srvGetDepthRequest)
(setf (get tum_alle_common_msgs::srvGetDepth :response) tum_alle_common_msgs::srvGetDepthResponse)

(defmethod tum_alle_common_msgs::srvGetDepthRequest
  (:response () (instance tum_alle_common_msgs::srvGetDepthResponse :init)))

(setf (get tum_alle_common_msgs::srvGetDepthRequest :md5sum-) "ff32a7ec5d38344a7d257eee320c2c21")
(setf (get tum_alle_common_msgs::srvGetDepthRequest :datatype-) "tum_alle_common_msgs/srvGetDepthRequest")
(setf (get tum_alle_common_msgs::srvGetDepthRequest :definition-)
      "sensor_msgs/Image     depth_image
msg2DPrediction       prediction2D

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
MSG: tum_alle_common_msgs/msg2DPrediction
string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers
---
float32               depth

")

(setf (get tum_alle_common_msgs::srvGetDepthResponse :md5sum-) "ff32a7ec5d38344a7d257eee320c2c21")
(setf (get tum_alle_common_msgs::srvGetDepthResponse :datatype-) "tum_alle_common_msgs/srvGetDepthResponse")
(setf (get tum_alle_common_msgs::srvGetDepthResponse :definition-)
      "sensor_msgs/Image     depth_image
msg2DPrediction       prediction2D

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
MSG: tum_alle_common_msgs/msg2DPrediction
string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers
---
float32               depth

")



(provide :tum_alle_common_msgs/srvGetDepth "ff32a7ec5d38344a7d257eee320c2c21")


