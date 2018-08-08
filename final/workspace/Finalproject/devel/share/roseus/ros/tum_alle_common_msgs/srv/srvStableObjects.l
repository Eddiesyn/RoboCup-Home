;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvStableObjects)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvStableObjects (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTS")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTS"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTSREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTSREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTSRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTABLEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvStableObjectsRequest
  :super ros::object
  :slots (_flush_cache _buffer_time _table_objects ))

(defmethod tum_alle_common_msgs::srvStableObjectsRequest
  (:init
   (&key
    ((:flush_cache __flush_cache) nil)
    ((:buffer_time __buffer_time) 0.0)
    ((:table_objects __table_objects) nil)
    )
   (send-super :init)
   (setq _flush_cache __flush_cache)
   (setq _buffer_time (float __buffer_time))
   (setq _table_objects __table_objects)
   self)
  (:flush_cache
   (&optional __flush_cache)
   (if __flush_cache (setq _flush_cache __flush_cache)) _flush_cache)
  (:buffer_time
   (&optional __buffer_time)
   (if __buffer_time (setq _buffer_time __buffer_time)) _buffer_time)
  (:table_objects
   (&optional __table_objects)
   (if __table_objects (setq _table_objects __table_objects)) _table_objects)
  (:serialization-length
   ()
   (+
    ;; bool _flush_cache
    1
    ;; float32 _buffer_time
    4
    ;; bool _table_objects
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flush_cache
       (if _flush_cache (write-byte -1 s) (write-byte 0 s))
     ;; float32 _buffer_time
       (sys::poke _buffer_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _table_objects
       (if _table_objects (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flush_cache
     (setq _flush_cache (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _buffer_time
     (setq _buffer_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _table_objects
     (setq _table_objects (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvStableObjectsResponse
  :super ros::object
  :slots (_result _result_optical ))

(defmethod tum_alle_common_msgs::srvStableObjectsResponse
  (:init
   (&key
    ((:result __result) (instance tum_alle_common_msgs::msg3DRecognition :init))
    ((:result_optical __result_optical) (instance tum_alle_common_msgs::msg3DRecognition :init))
    )
   (send-super :init)
   (setq _result __result)
   (setq _result_optical __result_optical)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:result_optical
   (&rest __result_optical)
   (if (keywordp (car __result_optical))
       (send* _result_optical __result_optical)
     (progn
       (if __result_optical (setq _result_optical (car __result_optical)))
       _result_optical)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg3DRecognition _result
    (send _result :serialization-length)
    ;; tum_alle_common_msgs/msg3DRecognition _result_optical
    (send _result_optical :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg3DRecognition _result
       (send _result :serialize s)
     ;; tum_alle_common_msgs/msg3DRecognition _result_optical
       (send _result_optical :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg3DRecognition _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;; tum_alle_common_msgs/msg3DRecognition _result_optical
     (send _result_optical :deserialize buf ptr-) (incf ptr- (send _result_optical :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvStableObjects
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvStableObjects :md5sum-) "66f13e3d3ec3200b333a36dc56ae0cc3")
(setf (get tum_alle_common_msgs::srvStableObjects :datatype-) "tum_alle_common_msgs/srvStableObjects")
(setf (get tum_alle_common_msgs::srvStableObjects :request) tum_alle_common_msgs::srvStableObjectsRequest)
(setf (get tum_alle_common_msgs::srvStableObjects :response) tum_alle_common_msgs::srvStableObjectsResponse)

(defmethod tum_alle_common_msgs::srvStableObjectsRequest
  (:response () (instance tum_alle_common_msgs::srvStableObjectsResponse :init)))

(setf (get tum_alle_common_msgs::srvStableObjectsRequest :md5sum-) "66f13e3d3ec3200b333a36dc56ae0cc3")
(setf (get tum_alle_common_msgs::srvStableObjectsRequest :datatype-) "tum_alle_common_msgs/srvStableObjectsRequest")
(setf (get tum_alle_common_msgs::srvStableObjectsRequest :definition-)
      "



bool    flush_cache
float32 buffer_time
bool    table_objects
---
msg3DRecognition result
msg3DRecognition result_optical


================================================================================
MSG: tum_alle_common_msgs/msg3DRecognition
sensor_msgs/Image       image
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

(setf (get tum_alle_common_msgs::srvStableObjectsResponse :md5sum-) "66f13e3d3ec3200b333a36dc56ae0cc3")
(setf (get tum_alle_common_msgs::srvStableObjectsResponse :datatype-) "tum_alle_common_msgs/srvStableObjectsResponse")
(setf (get tum_alle_common_msgs::srvStableObjectsResponse :definition-)
      "



bool    flush_cache
float32 buffer_time
bool    table_objects
---
msg3DRecognition result
msg3DRecognition result_optical


================================================================================
MSG: tum_alle_common_msgs/msg3DRecognition
sensor_msgs/Image       image
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



(provide :tum_alle_common_msgs/srvStableObjects "66f13e3d3ec3200b333a36dc56ae0cc3")


