;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvInferFromList)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvInferFromList (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLIST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLIST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLISTREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLISTREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLISTRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVINFERFROMLISTRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvInferFromListRequest
  :super ros::object
  :slots (_pred2D _pred3D ))

(defmethod tum_alle_common_msgs::srvInferFromListRequest
  (:init
   (&key
    ((:pred2D __pred2D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
    ((:pred3D __pred3D) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _pred2D __pred2D)
   (setq _pred3D __pred3D)
   self)
  (:pred2D
   (&rest __pred2D)
   (if (keywordp (car __pred2D))
       (send* _pred2D __pred2D)
     (progn
       (if __pred2D (setq _pred2D (car __pred2D)))
       _pred2D)))
  (:pred3D
   (&rest __pred3D)
   (if (keywordp (car __pred3D))
       (send* _pred3D __pred3D)
     (progn
       (if __pred3D (setq _pred3D (car __pred3D)))
       _pred3D)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
    (apply #'+ (send-all _pred2D :serialization-length)) 4
    ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
    (apply #'+ (send-all _pred3D :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
     (write-long (length _pred2D) s)
     (dolist (elem _pred2D)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
     (write-long (length _pred3D) s)
     (dolist (elem _pred3D)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msg2DPrediction[] _pred2D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pred2D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg2DPrediction :init) r)) r))
     (dolist (elem- _pred2D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msg3DPrediction[] _pred3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pred3D (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msg3DPrediction :init) r)) r))
     (dolist (elem- _pred3D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvInferFromListResponse
  :super ros::object
  :slots (_result _grasp _place _cluster_labels ))

(defmethod tum_alle_common_msgs::srvInferFromListResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:grasp __grasp) (instance tum_alle_common_msgs::msgGraspInfo :init))
    ((:place __place) (instance tum_alle_common_msgs::msgGraspInfo :init))
    ((:cluster_labels __cluster_labels) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _grasp __grasp)
   (setq _place __place)
   (setq _cluster_labels __cluster_labels)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:grasp
   (&rest __grasp)
   (if (keywordp (car __grasp))
       (send* _grasp __grasp)
     (progn
       (if __grasp (setq _grasp (car __grasp)))
       _grasp)))
  (:place
   (&rest __place)
   (if (keywordp (car __place))
       (send* _place __place)
     (progn
       (if __place (setq _place (car __place)))
       _place)))
  (:cluster_labels
   (&optional __cluster_labels)
   (if __cluster_labels (setq _cluster_labels __cluster_labels)) _cluster_labels)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; tum_alle_common_msgs/msgGraspInfo _grasp
    (send _grasp :serialization-length)
    ;; tum_alle_common_msgs/msgGraspInfo _place
    (send _place :serialization-length)
    ;; string[] _cluster_labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _cluster_labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; tum_alle_common_msgs/msgGraspInfo _grasp
       (send _grasp :serialize s)
     ;; tum_alle_common_msgs/msgGraspInfo _place
       (send _place :serialize s)
     ;; string[] _cluster_labels
     (write-long (length _cluster_labels) s)
     (dolist (elem _cluster_labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; tum_alle_common_msgs/msgGraspInfo _grasp
     (send _grasp :deserialize buf ptr-) (incf ptr- (send _grasp :serialization-length))
   ;; tum_alle_common_msgs/msgGraspInfo _place
     (send _place :deserialize buf ptr-) (incf ptr- (send _place :serialization-length))
   ;; string[] _cluster_labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _cluster_labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvInferFromList
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvInferFromList :md5sum-) "ba1dfc2541572858b8492a33b42bd13b")
(setf (get tum_alle_common_msgs::srvInferFromList :datatype-) "tum_alle_common_msgs/srvInferFromList")
(setf (get tum_alle_common_msgs::srvInferFromList :request) tum_alle_common_msgs::srvInferFromListRequest)
(setf (get tum_alle_common_msgs::srvInferFromList :response) tum_alle_common_msgs::srvInferFromListResponse)

(defmethod tum_alle_common_msgs::srvInferFromListRequest
  (:response () (instance tum_alle_common_msgs::srvInferFromListResponse :init)))

(setf (get tum_alle_common_msgs::srvInferFromListRequest :md5sum-) "ba1dfc2541572858b8492a33b42bd13b")
(setf (get tum_alle_common_msgs::srvInferFromListRequest :datatype-) "tum_alle_common_msgs/srvInferFromListRequest")
(setf (get tum_alle_common_msgs::srvInferFromListRequest :definition-)
      "tum_alle_common_msgs/msg2DPrediction[] pred2D
tum_alle_common_msgs/msg3DPrediction[] pred3D

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
---
bool result
msgGraspInfo grasp
msgGraspInfo place
string[] cluster_labels

================================================================================
MSG: tum_alle_common_msgs/msgGraspInfo
string label
string grasp_type
string direction
float64 width
int32 shelf_level
geometry_msgs/PoseStamped pose
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
")

(setf (get tum_alle_common_msgs::srvInferFromListResponse :md5sum-) "ba1dfc2541572858b8492a33b42bd13b")
(setf (get tum_alle_common_msgs::srvInferFromListResponse :datatype-) "tum_alle_common_msgs/srvInferFromListResponse")
(setf (get tum_alle_common_msgs::srvInferFromListResponse :definition-)
      "tum_alle_common_msgs/msg2DPrediction[] pred2D
tum_alle_common_msgs/msg3DPrediction[] pred3D

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
---
bool result
msgGraspInfo grasp
msgGraspInfo place
string[] cluster_labels

================================================================================
MSG: tum_alle_common_msgs/msgGraspInfo
string label
string grasp_type
string direction
float64 width
int32 shelf_level
geometry_msgs/PoseStamped pose
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
")



(provide :tum_alle_common_msgs/srvInferFromList "ba1dfc2541572858b8492a33b42bd13b")


