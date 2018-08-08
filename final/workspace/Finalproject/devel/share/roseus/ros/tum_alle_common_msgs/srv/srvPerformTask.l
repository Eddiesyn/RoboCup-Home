;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvPerformTask)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvPerformTask (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASK")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASK"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASKREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASKREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASKRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVPERFORMTASKRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvPerformTaskRequest
  :super ros::object
  :slots (_command _goal_location _goal_object _object_general_location _object_specific_location _speech_text _confirmation ))

(defmethod tum_alle_common_msgs::srvPerformTaskRequest
  (:init
   (&key
    ((:command __command) "")
    ((:goal_location __goal_location) "")
    ((:goal_object __goal_object) "")
    ((:object_general_location __object_general_location) "")
    ((:object_specific_location __object_specific_location) "")
    ((:speech_text __speech_text) "")
    ((:confirmation __confirmation) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _goal_location (string __goal_location))
   (setq _goal_object (string __goal_object))
   (setq _object_general_location (string __object_general_location))
   (setq _object_specific_location (string __object_specific_location))
   (setq _speech_text (string __speech_text))
   (setq _confirmation (string __confirmation))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:goal_location
   (&optional __goal_location)
   (if __goal_location (setq _goal_location __goal_location)) _goal_location)
  (:goal_object
   (&optional __goal_object)
   (if __goal_object (setq _goal_object __goal_object)) _goal_object)
  (:object_general_location
   (&optional __object_general_location)
   (if __object_general_location (setq _object_general_location __object_general_location)) _object_general_location)
  (:object_specific_location
   (&optional __object_specific_location)
   (if __object_specific_location (setq _object_specific_location __object_specific_location)) _object_specific_location)
  (:speech_text
   (&optional __speech_text)
   (if __speech_text (setq _speech_text __speech_text)) _speech_text)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _goal_location
    4 (length _goal_location)
    ;; string _goal_object
    4 (length _goal_object)
    ;; string _object_general_location
    4 (length _object_general_location)
    ;; string _object_specific_location
    4 (length _object_specific_location)
    ;; string _speech_text
    4 (length _speech_text)
    ;; string _confirmation
    4 (length _confirmation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _goal_location
       (write-long (length _goal_location) s) (princ _goal_location s)
     ;; string _goal_object
       (write-long (length _goal_object) s) (princ _goal_object s)
     ;; string _object_general_location
       (write-long (length _object_general_location) s) (princ _object_general_location s)
     ;; string _object_specific_location
       (write-long (length _object_specific_location) s) (princ _object_specific_location s)
     ;; string _speech_text
       (write-long (length _speech_text) s) (princ _speech_text s)
     ;; string _confirmation
       (write-long (length _confirmation) s) (princ _confirmation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_general_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_general_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_specific_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_specific_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _speech_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _confirmation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _confirmation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvPerformTaskResponse
  :super ros::object
  :slots ())

(defmethod tum_alle_common_msgs::srvPerformTaskResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvPerformTask
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvPerformTask :md5sum-) "cbd6abba08de9ad042e50b1f8315960c")
(setf (get tum_alle_common_msgs::srvPerformTask :datatype-) "tum_alle_common_msgs/srvPerformTask")
(setf (get tum_alle_common_msgs::srvPerformTask :request) tum_alle_common_msgs::srvPerformTaskRequest)
(setf (get tum_alle_common_msgs::srvPerformTask :response) tum_alle_common_msgs::srvPerformTaskResponse)

(defmethod tum_alle_common_msgs::srvPerformTaskRequest
  (:response () (instance tum_alle_common_msgs::srvPerformTaskResponse :init)))

(setf (get tum_alle_common_msgs::srvPerformTaskRequest :md5sum-) "cbd6abba08de9ad042e50b1f8315960c")
(setf (get tum_alle_common_msgs::srvPerformTaskRequest :datatype-) "tum_alle_common_msgs/srvPerformTaskRequest")
(setf (get tum_alle_common_msgs::srvPerformTaskRequest :definition-)
      "
string command
string goal_location
string goal_object
string object_general_location
string object_specific_location
string speech_text
string confirmation

---
")

(setf (get tum_alle_common_msgs::srvPerformTaskResponse :md5sum-) "cbd6abba08de9ad042e50b1f8315960c")
(setf (get tum_alle_common_msgs::srvPerformTaskResponse :datatype-) "tum_alle_common_msgs/srvPerformTaskResponse")
(setf (get tum_alle_common_msgs::srvPerformTaskResponse :definition-)
      "
string command
string goal_location
string goal_object
string object_general_location
string object_specific_location
string speech_text
string confirmation

---
")



(provide :tum_alle_common_msgs/srvPerformTask "cbd6abba08de9ad042e50b1f8315960c")


