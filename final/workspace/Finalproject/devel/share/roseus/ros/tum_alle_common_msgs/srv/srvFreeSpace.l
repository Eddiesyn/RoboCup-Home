;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvFreeSpace)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvFreeSpace (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACE"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACEREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACEREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACERESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVFREESPACERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::srvFreeSpaceRequest
  :super ros::object
  :slots (_clust2D ))

(defmethod tum_alle_common_msgs::srvFreeSpaceRequest
  (:init
   (&key
    ((:clust2D __clust2D) (instance tum_alle_common_msgs::msg2DRecognition :init))
    )
   (send-super :init)
   (setq _clust2D __clust2D)
   self)
  (:clust2D
   (&rest __clust2D)
   (if (keywordp (car __clust2D))
       (send* _clust2D __clust2D)
     (progn
       (if __clust2D (setq _clust2D (car __clust2D)))
       _clust2D)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg2DRecognition _clust2D
    (send _clust2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg2DRecognition _clust2D
       (send _clust2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg2DRecognition _clust2D
     (send _clust2D :deserialize buf ptr-) (incf ptr- (send _clust2D :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvFreeSpaceResponse
  :super ros::object
  :slots (_left_cluster _left_of _right_cluster _right_of _unknown_objects _unknown_left_cluster _unknown_left_of _unknown_right_cluster _unknown_right_of ))

(defmethod tum_alle_common_msgs::srvFreeSpaceResponse
  (:init
   (&key
    ((:left_cluster __left_cluster) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:left_of __left_of) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:right_cluster __right_cluster) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:right_of __right_of) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:unknown_objects __unknown_objects) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
    ((:unknown_left_cluster __unknown_left_cluster) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:unknown_left_of __unknown_left_of) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:unknown_right_cluster __unknown_right_cluster) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:unknown_right_of __unknown_right_of) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _left_cluster __left_cluster)
   (setq _left_of __left_of)
   (setq _right_cluster __right_cluster)
   (setq _right_of __right_of)
   (setq _unknown_objects __unknown_objects)
   (setq _unknown_left_cluster __unknown_left_cluster)
   (setq _unknown_left_of __unknown_left_of)
   (setq _unknown_right_cluster __unknown_right_cluster)
   (setq _unknown_right_of __unknown_right_of)
   self)
  (:left_cluster
   (&rest __left_cluster)
   (if (keywordp (car __left_cluster))
       (send* _left_cluster __left_cluster)
     (progn
       (if __left_cluster (setq _left_cluster (car __left_cluster)))
       _left_cluster)))
  (:left_of
   (&rest __left_of)
   (if (keywordp (car __left_of))
       (send* _left_of __left_of)
     (progn
       (if __left_of (setq _left_of (car __left_of)))
       _left_of)))
  (:right_cluster
   (&rest __right_cluster)
   (if (keywordp (car __right_cluster))
       (send* _right_cluster __right_cluster)
     (progn
       (if __right_cluster (setq _right_cluster (car __right_cluster)))
       _right_cluster)))
  (:right_of
   (&rest __right_of)
   (if (keywordp (car __right_of))
       (send* _right_of __right_of)
     (progn
       (if __right_of (setq _right_of (car __right_of)))
       _right_of)))
  (:unknown_objects
   (&rest __unknown_objects)
   (if (keywordp (car __unknown_objects))
       (send* _unknown_objects __unknown_objects)
     (progn
       (if __unknown_objects (setq _unknown_objects (car __unknown_objects)))
       _unknown_objects)))
  (:unknown_left_cluster
   (&rest __unknown_left_cluster)
   (if (keywordp (car __unknown_left_cluster))
       (send* _unknown_left_cluster __unknown_left_cluster)
     (progn
       (if __unknown_left_cluster (setq _unknown_left_cluster (car __unknown_left_cluster)))
       _unknown_left_cluster)))
  (:unknown_left_of
   (&rest __unknown_left_of)
   (if (keywordp (car __unknown_left_of))
       (send* _unknown_left_of __unknown_left_of)
     (progn
       (if __unknown_left_of (setq _unknown_left_of (car __unknown_left_of)))
       _unknown_left_of)))
  (:unknown_right_cluster
   (&rest __unknown_right_cluster)
   (if (keywordp (car __unknown_right_cluster))
       (send* _unknown_right_cluster __unknown_right_cluster)
     (progn
       (if __unknown_right_cluster (setq _unknown_right_cluster (car __unknown_right_cluster)))
       _unknown_right_cluster)))
  (:unknown_right_of
   (&rest __unknown_right_of)
   (if (keywordp (car __unknown_right_of))
       (send* _unknown_right_of __unknown_right_of)
     (progn
       (if __unknown_right_of (setq _unknown_right_of (car __unknown_right_of)))
       _unknown_right_of)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _left_cluster
    (apply #'+ (send-all _left_cluster :serialization-length)) 4
    ;; geometry_msgs/Point[] _left_of
    (apply #'+ (send-all _left_of :serialization-length)) 4
    ;; geometry_msgs/Point[] _right_cluster
    (apply #'+ (send-all _right_cluster :serialization-length)) 4
    ;; geometry_msgs/Point[] _right_of
    (apply #'+ (send-all _right_of :serialization-length)) 4
    ;; tum_alle_common_msgs/msg3DPrediction[] _unknown_objects
    (apply #'+ (send-all _unknown_objects :serialization-length)) 4
    ;; geometry_msgs/Point[] _unknown_left_cluster
    (apply #'+ (send-all _unknown_left_cluster :serialization-length)) 4
    ;; geometry_msgs/Point[] _unknown_left_of
    (apply #'+ (send-all _unknown_left_of :serialization-length)) 4
    ;; geometry_msgs/Point[] _unknown_right_cluster
    (apply #'+ (send-all _unknown_right_cluster :serialization-length)) 4
    ;; geometry_msgs/Point[] _unknown_right_of
    (apply #'+ (send-all _unknown_right_of :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _left_cluster
     (write-long (length _left_cluster) s)
     (dolist (elem _left_cluster)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _left_of
     (write-long (length _left_of) s)
     (dolist (elem _left_of)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _right_cluster
     (write-long (length _right_cluster) s)
     (dolist (elem _right_cluster)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _right_of
     (write-long (length _right_of) s)
     (dolist (elem _right_of)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msg3DPrediction[] _unknown_objects
     (write-long (length _unknown_objects) s)
     (dolist (elem _unknown_objects)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _unknown_left_cluster
     (write-long (length _unknown_left_cluster) s)
     (dolist (elem _unknown_left_cluster)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _unknown_left_of
     (write-long (length _unknown_left_of) s)
     (dolist (elem _unknown_left_of)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _unknown_right_cluster
     (write-long (length _unknown_right_cluster) s)
     (dolist (elem _unknown_right_cluster)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _unknown_right_of
     (write-long (length _unknown_right_of) s)
     (dolist (elem _unknown_right_of)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _left_cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_cluster (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _left_cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _left_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_of (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _left_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _right_cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_cluster (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _right_cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _right_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_of (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _right_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msg3DPrediction[] _unknown_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_objects (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
     (dolist (elem- _unknown_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _unknown_left_cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_left_cluster (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _unknown_left_cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _unknown_left_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_left_of (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _unknown_left_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _unknown_right_cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_right_cluster (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _unknown_right_cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _unknown_right_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_right_of (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _unknown_right_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvFreeSpace
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvFreeSpace :md5sum-) "e7bbf846ac124617879d82f8cbf6f51d")
(setf (get tum_alle_common_msgs::srvFreeSpace :datatype-) "tum_alle_common_msgs/srvFreeSpace")
(setf (get tum_alle_common_msgs::srvFreeSpace :request) tum_alle_common_msgs::srvFreeSpaceRequest)
(setf (get tum_alle_common_msgs::srvFreeSpace :response) tum_alle_common_msgs::srvFreeSpaceResponse)

(defmethod tum_alle_common_msgs::srvFreeSpaceRequest
  (:response () (instance tum_alle_common_msgs::srvFreeSpaceResponse :init)))

(setf (get tum_alle_common_msgs::srvFreeSpaceRequest :md5sum-) "e7bbf846ac124617879d82f8cbf6f51d")
(setf (get tum_alle_common_msgs::srvFreeSpaceRequest :datatype-) "tum_alle_common_msgs/srvFreeSpaceRequest")
(setf (get tum_alle_common_msgs::srvFreeSpaceRequest :definition-)
      "msg2DRecognition clust2D

================================================================================
MSG: tum_alle_common_msgs/msg2DRecognition
sensor_msgs/Image       image
sensor_msgs/Image       depth_image
geometry_msgs/Transform transform
msg2DPrediction[]       predictions2D

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
---
geometry_msgs/Point[] left_cluster
geometry_msgs/Point[] left_of
geometry_msgs/Point[] right_cluster
geometry_msgs/Point[] right_of

msg3DPrediction[] unknown_objects
geometry_msgs/Point[] unknown_left_cluster
geometry_msgs/Point[] unknown_left_of
geometry_msgs/Point[] unknown_right_cluster
geometry_msgs/Point[] unknown_right_of


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get tum_alle_common_msgs::srvFreeSpaceResponse :md5sum-) "e7bbf846ac124617879d82f8cbf6f51d")
(setf (get tum_alle_common_msgs::srvFreeSpaceResponse :datatype-) "tum_alle_common_msgs/srvFreeSpaceResponse")
(setf (get tum_alle_common_msgs::srvFreeSpaceResponse :definition-)
      "msg2DRecognition clust2D

================================================================================
MSG: tum_alle_common_msgs/msg2DRecognition
sensor_msgs/Image       image
sensor_msgs/Image       depth_image
geometry_msgs/Transform transform
msg2DPrediction[]       predictions2D

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
---
geometry_msgs/Point[] left_cluster
geometry_msgs/Point[] left_of
geometry_msgs/Point[] right_cluster
geometry_msgs/Point[] right_of

msg3DPrediction[] unknown_objects
geometry_msgs/Point[] unknown_left_cluster
geometry_msgs/Point[] unknown_left_of
geometry_msgs/Point[] unknown_right_cluster
geometry_msgs/Point[] unknown_right_of


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :tum_alle_common_msgs/srvFreeSpace "e7bbf846ac124617879d82f8cbf6f51d")


