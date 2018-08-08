;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvStartPlanner)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvStartPlanner (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNER")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNER"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNERREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNERREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNERRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSTARTPLANNERRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvStartPlannerRequest
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::srvStartPlannerRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvStartPlannerResponse
  :super ros::object
  :slots (_status ))

(defmethod tum_alle_common_msgs::srvStartPlannerResponse
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

(defclass tum_alle_common_msgs::srvStartPlanner
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvStartPlanner :md5sum-) "51488b07d0aacb6956a0af72c8f1d91b")
(setf (get tum_alle_common_msgs::srvStartPlanner :datatype-) "tum_alle_common_msgs/srvStartPlanner")
(setf (get tum_alle_common_msgs::srvStartPlanner :request) tum_alle_common_msgs::srvStartPlannerRequest)
(setf (get tum_alle_common_msgs::srvStartPlanner :response) tum_alle_common_msgs::srvStartPlannerResponse)

(defmethod tum_alle_common_msgs::srvStartPlannerRequest
  (:response () (instance tum_alle_common_msgs::srvStartPlannerResponse :init)))

(setf (get tum_alle_common_msgs::srvStartPlannerRequest :md5sum-) "51488b07d0aacb6956a0af72c8f1d91b")
(setf (get tum_alle_common_msgs::srvStartPlannerRequest :datatype-) "tum_alle_common_msgs/srvStartPlannerRequest")
(setf (get tum_alle_common_msgs::srvStartPlannerRequest :definition-)
      "string command
---
string status

")

(setf (get tum_alle_common_msgs::srvStartPlannerResponse :md5sum-) "51488b07d0aacb6956a0af72c8f1d91b")
(setf (get tum_alle_common_msgs::srvStartPlannerResponse :datatype-) "tum_alle_common_msgs/srvStartPlannerResponse")
(setf (get tum_alle_common_msgs::srvStartPlannerResponse :definition-)
      "string command
---
string status

")



(provide :tum_alle_common_msgs/srvStartPlanner "51488b07d0aacb6956a0af72c8f1d91b")


