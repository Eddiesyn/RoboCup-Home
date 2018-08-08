;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvPlanning)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvPlanning (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPLANNING")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPLANNING"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPLANNINGREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPLANNINGREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPLANNINGRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPLANNINGRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvPlanningRequest
  :super ros::object
  :slots (_command _object_general_location _object_specific_location _goal_location _goal_object _speech_text ))

(defmethod tum_alle_common_msgs::srvPlanningRequest
  (:init
   (&key
    ((:command __command) "")
    ((:object_general_location __object_general_location) "")
    ((:object_specific_location __object_specific_location) "")
    ((:goal_location __goal_location) "")
    ((:goal_object __goal_object) "")
    ((:speech_text __speech_text) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _object_general_location (string __object_general_location))
   (setq _object_specific_location (string __object_specific_location))
   (setq _goal_location (string __goal_location))
   (setq _goal_object (string __goal_object))
   (setq _speech_text (string __speech_text))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:object_general_location
   (&optional __object_general_location)
   (if __object_general_location (setq _object_general_location __object_general_location)) _object_general_location)
  (:object_specific_location
   (&optional __object_specific_location)
   (if __object_specific_location (setq _object_specific_location __object_specific_location)) _object_specific_location)
  (:goal_location
   (&optional __goal_location)
   (if __goal_location (setq _goal_location __goal_location)) _goal_location)
  (:goal_object
   (&optional __goal_object)
   (if __goal_object (setq _goal_object __goal_object)) _goal_object)
  (:speech_text
   (&optional __speech_text)
   (if __speech_text (setq _speech_text __speech_text)) _speech_text)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _object_general_location
    4 (length _object_general_location)
    ;; string _object_specific_location
    4 (length _object_specific_location)
    ;; string _goal_location
    4 (length _goal_location)
    ;; string _goal_object
    4 (length _goal_object)
    ;; string _speech_text
    4 (length _speech_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _object_general_location
       (write-long (length _object_general_location) s) (princ _object_general_location s)
     ;; string _object_specific_location
       (write-long (length _object_specific_location) s) (princ _object_specific_location s)
     ;; string _goal_location
       (write-long (length _goal_location) s) (princ _goal_location s)
     ;; string _goal_object
       (write-long (length _goal_object) s) (princ _goal_object s)
     ;; string _speech_text
       (write-long (length _speech_text) s) (princ _speech_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_general_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_general_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_specific_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_specific_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _speech_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvPlanningResponse
  :super ros::object
  :slots (_status ))

(defmethod tum_alle_common_msgs::srvPlanningResponse
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

(defclass tum_alle_common_msgs::srvPlanning
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvPlanning :md5sum-) "4e32a46cd1a62ca71b3f699ad60b447c")
(setf (get tum_alle_common_msgs::srvPlanning :datatype-) "tum_alle_common_msgs/srvPlanning")
(setf (get tum_alle_common_msgs::srvPlanning :request) tum_alle_common_msgs::srvPlanningRequest)
(setf (get tum_alle_common_msgs::srvPlanning :response) tum_alle_common_msgs::srvPlanningResponse)

(defmethod tum_alle_common_msgs::srvPlanningRequest
  (:response () (instance tum_alle_common_msgs::srvPlanningResponse :init)))

(setf (get tum_alle_common_msgs::srvPlanningRequest :md5sum-) "4e32a46cd1a62ca71b3f699ad60b447c")
(setf (get tum_alle_common_msgs::srvPlanningRequest :datatype-) "tum_alle_common_msgs/srvPlanningRequest")
(setf (get tum_alle_common_msgs::srvPlanningRequest :definition-)
      "
string command
string object_general_location
string object_specific_location
string goal_location
string goal_object
string speech_text
---
string status



")

(setf (get tum_alle_common_msgs::srvPlanningResponse :md5sum-) "4e32a46cd1a62ca71b3f699ad60b447c")
(setf (get tum_alle_common_msgs::srvPlanningResponse :datatype-) "tum_alle_common_msgs/srvPlanningResponse")
(setf (get tum_alle_common_msgs::srvPlanningResponse :definition-)
      "
string command
string object_general_location
string object_specific_location
string goal_location
string goal_object
string speech_text
---
string status



")



(provide :tum_alle_common_msgs/srvPlanning "4e32a46cd1a62ca71b3f699ad60b447c")


