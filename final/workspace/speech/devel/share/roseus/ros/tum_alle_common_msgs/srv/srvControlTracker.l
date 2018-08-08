;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvControlTracker)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvControlTracker (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKER")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKER"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKERREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKERREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKERRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCONTROLTRACKERRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvControlTrackerRequest
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::srvControlTrackerRequest
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

(defclass tum_alle_common_msgs::srvControlTrackerResponse
  :super ros::object
  :slots (_success ))

(defmethod tum_alle_common_msgs::srvControlTrackerResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvControlTracker
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvControlTracker :md5sum-) "031d24522d462b2314fd1b6270670dd2")
(setf (get tum_alle_common_msgs::srvControlTracker :datatype-) "tum_alle_common_msgs/srvControlTracker")
(setf (get tum_alle_common_msgs::srvControlTracker :request) tum_alle_common_msgs::srvControlTrackerRequest)
(setf (get tum_alle_common_msgs::srvControlTracker :response) tum_alle_common_msgs::srvControlTrackerResponse)

(defmethod tum_alle_common_msgs::srvControlTrackerRequest
  (:response () (instance tum_alle_common_msgs::srvControlTrackerResponse :init)))

(setf (get tum_alle_common_msgs::srvControlTrackerRequest :md5sum-) "031d24522d462b2314fd1b6270670dd2")
(setf (get tum_alle_common_msgs::srvControlTrackerRequest :datatype-) "tum_alle_common_msgs/srvControlTrackerRequest")
(setf (get tum_alle_common_msgs::srvControlTrackerRequest :definition-)
      "string command
---
bool   success

")

(setf (get tum_alle_common_msgs::srvControlTrackerResponse :md5sum-) "031d24522d462b2314fd1b6270670dd2")
(setf (get tum_alle_common_msgs::srvControlTrackerResponse :datatype-) "tum_alle_common_msgs/srvControlTrackerResponse")
(setf (get tum_alle_common_msgs::srvControlTrackerResponse :definition-)
      "string command
---
bool   success

")



(provide :tum_alle_common_msgs/srvControlTracker "031d24522d462b2314fd1b6270670dd2")


