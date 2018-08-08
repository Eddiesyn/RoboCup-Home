;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvElection)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvElection (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVELECTION")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVELECTION"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVELECTIONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVELECTIONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVELECTIONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVELECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass tum_alle_common_msgs::srvElectionRequest
  :super ros::object
  :slots (_tracked_id _image _ids _predictions ))

(defmethod tum_alle_common_msgs::srvElectionRequest
  (:init
   (&key
    ((:tracked_id __tracked_id) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:predictions __predictions) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _tracked_id (round __tracked_id))
   (setq _image __image)
   (setq _ids __ids)
   (setq _predictions __predictions)
   self)
  (:tracked_id
   (&optional __tracked_id)
   (if __tracked_id (setq _tracked_id __tracked_id)) _tracked_id)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:serialization-length
   ()
   (+
    ;; int32 _tracked_id
    4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; tum_alle_common_msgs/msg2DPrediction[] _predictions
    (apply #'+ (send-all _predictions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tracked_id
       (write-long _tracked_id s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; tum_alle_common_msgs/msg2DPrediction[] _predictions
     (write-long (length _predictions) s)
     (dolist (elem _predictions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tracked_id
     (setq _tracked_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; tum_alle_common_msgs/msg2DPrediction[] _predictions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predictions (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
     (dolist (elem- _predictions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvElectionResponse
  :super ros::object
  :slots (_result ))

(defmethod tum_alle_common_msgs::srvElectionResponse
  (:init
   (&key
    ((:result __result) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool[] _result
    (* 1    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _result
     (write-long (length _result) s)
     (dotimes (i (length _result))
       (if (elt _result i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (make-list n))
     (dotimes (i n)
     (setf (elt _result i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvElection
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvElection :md5sum-) "346d402876d63bbe29aa8a26ef5fda79")
(setf (get tum_alle_common_msgs::srvElection :datatype-) "tum_alle_common_msgs/srvElection")
(setf (get tum_alle_common_msgs::srvElection :request) tum_alle_common_msgs::srvElectionRequest)
(setf (get tum_alle_common_msgs::srvElection :response) tum_alle_common_msgs::srvElectionResponse)

(defmethod tum_alle_common_msgs::srvElectionRequest
  (:response () (instance tum_alle_common_msgs::srvElectionResponse :init)))

(setf (get tum_alle_common_msgs::srvElectionRequest :md5sum-) "346d402876d63bbe29aa8a26ef5fda79")
(setf (get tum_alle_common_msgs::srvElectionRequest :datatype-) "tum_alle_common_msgs/srvElectionRequest")
(setf (get tum_alle_common_msgs::srvElectionRequest :definition-)
      "int32              tracked_id
sensor_msgs/Image  image
int32[]            ids
msg2DPrediction[]  predictions

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
bool[] result

")

(setf (get tum_alle_common_msgs::srvElectionResponse :md5sum-) "346d402876d63bbe29aa8a26ef5fda79")
(setf (get tum_alle_common_msgs::srvElectionResponse :datatype-) "tum_alle_common_msgs/srvElectionResponse")
(setf (get tum_alle_common_msgs::srvElectionResponse :definition-)
      "int32              tracked_id
sensor_msgs/Image  image
int32[]            ids
msg2DPrediction[]  predictions

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
bool[] result

")



(provide :tum_alle_common_msgs/srvElection "346d402876d63bbe29aa8a26ef5fda79")


