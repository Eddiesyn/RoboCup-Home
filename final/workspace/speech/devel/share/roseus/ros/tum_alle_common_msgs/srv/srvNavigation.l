;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvNavigation)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvNavigation (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATION")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATION"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATIONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATIONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATIONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVNAVIGATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass tum_alle_common_msgs::srvNavigationRequest
  :super ros::object
  :slots (_command _location_id _location_pose ))

(defmethod tum_alle_common_msgs::srvNavigationRequest
  (:init
   (&key
    ((:command __command) "")
    ((:location_id __location_id) "")
    ((:location_pose __location_pose) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _location_id (string __location_id))
   (setq _location_pose __location_pose)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:location_id
   (&optional __location_id)
   (if __location_id (setq _location_id __location_id)) _location_id)
  (:location_pose
   (&rest __location_pose)
   (if (keywordp (car __location_pose))
       (send* _location_pose __location_pose)
     (progn
       (if __location_pose (setq _location_pose (car __location_pose)))
       _location_pose)))
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _location_id
    4 (length _location_id)
    ;; geometry_msgs/Point _location_pose
    (send _location_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _location_id
       (write-long (length _location_id) s) (princ _location_id s)
     ;; geometry_msgs/Point _location_pose
       (send _location_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _location_pose
     (send _location_pose :deserialize buf ptr-) (incf ptr- (send _location_pose :serialization-length))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvNavigationResponse
  :super ros::object
  :slots (_status ))

(defmethod tum_alle_common_msgs::srvNavigationResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvNavigation
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvNavigation :md5sum-) "678835c49305ac0de54f01e826b6f3ff")
(setf (get tum_alle_common_msgs::srvNavigation :datatype-) "tum_alle_common_msgs/srvNavigation")
(setf (get tum_alle_common_msgs::srvNavigation :request) tum_alle_common_msgs::srvNavigationRequest)
(setf (get tum_alle_common_msgs::srvNavigation :response) tum_alle_common_msgs::srvNavigationResponse)

(defmethod tum_alle_common_msgs::srvNavigationRequest
  (:response () (instance tum_alle_common_msgs::srvNavigationResponse :init)))

(setf (get tum_alle_common_msgs::srvNavigationRequest :md5sum-) "678835c49305ac0de54f01e826b6f3ff")
(setf (get tum_alle_common_msgs::srvNavigationRequest :datatype-) "tum_alle_common_msgs/srvNavigationRequest")
(setf (get tum_alle_common_msgs::srvNavigationRequest :definition-)
      "string command
string location_id
geometry_msgs/Point location_pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
string status



")

(setf (get tum_alle_common_msgs::srvNavigationResponse :md5sum-) "678835c49305ac0de54f01e826b6f3ff")
(setf (get tum_alle_common_msgs::srvNavigationResponse :datatype-) "tum_alle_common_msgs/srvNavigationResponse")
(setf (get tum_alle_common_msgs::srvNavigationResponse :definition-)
      "string command
string location_id
geometry_msgs/Point location_pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
string status



")



(provide :tum_alle_common_msgs/srvNavigation "678835c49305ac0de54f01e826b6f3ff")


