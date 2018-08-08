;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvClusterPerson)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvClusterPerson (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSON")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSON"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCLUSTERPERSONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tum_alle_common_msgs::srvClusterPersonRequest
  :super ros::object
  :slots (_pos _size ))

(defmethod tum_alle_common_msgs::srvClusterPersonRequest
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _size __size)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvClusterPersonResponse
  :super ros::object
  :slots (_pos ))

(defmethod tum_alle_common_msgs::srvClusterPersonResponse
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvClusterPerson
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvClusterPerson :md5sum-) "027335564df029fa5d68697960ac5d29")
(setf (get tum_alle_common_msgs::srvClusterPerson :datatype-) "tum_alle_common_msgs/srvClusterPerson")
(setf (get tum_alle_common_msgs::srvClusterPerson :request) tum_alle_common_msgs::srvClusterPersonRequest)
(setf (get tum_alle_common_msgs::srvClusterPerson :response) tum_alle_common_msgs::srvClusterPersonResponse)

(defmethod tum_alle_common_msgs::srvClusterPersonRequest
  (:response () (instance tum_alle_common_msgs::srvClusterPersonResponse :init)))

(setf (get tum_alle_common_msgs::srvClusterPersonRequest :md5sum-) "027335564df029fa5d68697960ac5d29")
(setf (get tum_alle_common_msgs::srvClusterPersonRequest :datatype-) "tum_alle_common_msgs/srvClusterPersonRequest")
(setf (get tum_alle_common_msgs::srvClusterPersonRequest :definition-)
      "geometry_msgs/Point   pos
geometry_msgs/Vector3 size

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
geometry_msgs/Point   pos


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get tum_alle_common_msgs::srvClusterPersonResponse :md5sum-) "027335564df029fa5d68697960ac5d29")
(setf (get tum_alle_common_msgs::srvClusterPersonResponse :datatype-) "tum_alle_common_msgs/srvClusterPersonResponse")
(setf (get tum_alle_common_msgs::srvClusterPersonResponse :definition-)
      "geometry_msgs/Point   pos
geometry_msgs/Vector3 size

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
geometry_msgs/Point   pos


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :tum_alle_common_msgs/srvClusterPerson "027335564df029fa5d68697960ac5d29")


