;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvGetStableObjects)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvGetStableObjects (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTS")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTS"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTSREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTSREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTSRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETSTABLEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvGetStableObjectsRequest
  :super ros::object
  :slots (_recognitions ))

(defmethod tum_alle_common_msgs::srvGetStableObjectsRequest
  (:init
   (&key
    ((:recognitions __recognitions) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DRecognition :init) r)) r))
    )
   (send-super :init)
   (setq _recognitions __recognitions)
   self)
  (:recognitions
   (&rest __recognitions)
   (if (keywordp (car __recognitions))
       (send* _recognitions __recognitions)
     (progn
       (if __recognitions (setq _recognitions (car __recognitions)))
       _recognitions)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg3DRecognition[] _recognitions
    (apply #'+ (send-all _recognitions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg3DRecognition[] _recognitions
     (write-long (length _recognitions) s)
     (dolist (elem _recognitions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg3DRecognition[] _recognitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recognitions (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DRecognition :init) r)) r))
     (dolist (elem- _recognitions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetStableObjectsResponse
  :super ros::object
  :slots (_recognition ))

(defmethod tum_alle_common_msgs::srvGetStableObjectsResponse
  (:init
   (&key
    ((:recognition __recognition) (instance tum_alle_common_msgs::msg3DRecognition :init))
    )
   (send-super :init)
   (setq _recognition __recognition)
   self)
  (:recognition
   (&rest __recognition)
   (if (keywordp (car __recognition))
       (send* _recognition __recognition)
     (progn
       (if __recognition (setq _recognition (car __recognition)))
       _recognition)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg3DRecognition _recognition
    (send _recognition :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg3DRecognition _recognition
       (send _recognition :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg3DRecognition _recognition
     (send _recognition :deserialize buf ptr-) (incf ptr- (send _recognition :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetStableObjects
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvGetStableObjects :md5sum-) "6268bb2b461282f65320ab49c26d8ff4")
(setf (get tum_alle_common_msgs::srvGetStableObjects :datatype-) "tum_alle_common_msgs/srvGetStableObjects")
(setf (get tum_alle_common_msgs::srvGetStableObjects :request) tum_alle_common_msgs::srvGetStableObjectsRequest)
(setf (get tum_alle_common_msgs::srvGetStableObjects :response) tum_alle_common_msgs::srvGetStableObjectsResponse)

(defmethod tum_alle_common_msgs::srvGetStableObjectsRequest
  (:response () (instance tum_alle_common_msgs::srvGetStableObjectsResponse :init)))

(setf (get tum_alle_common_msgs::srvGetStableObjectsRequest :md5sum-) "6268bb2b461282f65320ab49c26d8ff4")
(setf (get tum_alle_common_msgs::srvGetStableObjectsRequest :datatype-) "tum_alle_common_msgs/srvGetStableObjectsRequest")
(setf (get tum_alle_common_msgs::srvGetStableObjectsRequest :definition-)
      "msg3DRecognition[] recognitions

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
---
msg3DRecognition recognition


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

(setf (get tum_alle_common_msgs::srvGetStableObjectsResponse :md5sum-) "6268bb2b461282f65320ab49c26d8ff4")
(setf (get tum_alle_common_msgs::srvGetStableObjectsResponse :datatype-) "tum_alle_common_msgs/srvGetStableObjectsResponse")
(setf (get tum_alle_common_msgs::srvGetStableObjectsResponse :definition-)
      "msg3DRecognition[] recognitions

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
---
msg3DRecognition recognition


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



(provide :tum_alle_common_msgs/srvGetStableObjects "6268bb2b461282f65320ab49c26d8ff4")


