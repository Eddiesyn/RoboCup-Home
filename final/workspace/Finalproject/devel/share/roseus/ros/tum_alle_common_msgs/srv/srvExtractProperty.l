;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvExtractProperty)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvExtractProperty (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTY")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTY"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTYREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTYREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTYRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVEXTRACTPROPERTYRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvExtractPropertyRequest
  :super ros::object
  :slots (_command _subcommand ))

(defmethod tum_alle_common_msgs::srvExtractPropertyRequest
  (:init
   (&key
    ((:command __command) "")
    ((:subcommand __subcommand) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _subcommand (string __subcommand))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:subcommand
   (&optional __subcommand)
   (if __subcommand (setq _subcommand __subcommand)) _subcommand)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _subcommand
    4 (length _subcommand)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _subcommand
       (write-long (length _subcommand) s) (princ _subcommand s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subcommand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subcommand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvExtractPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod tum_alle_common_msgs::srvExtractPropertyResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvExtractProperty
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvExtractProperty :md5sum-) "b253553970eafd667f42fcf9d6384784")
(setf (get tum_alle_common_msgs::srvExtractProperty :datatype-) "tum_alle_common_msgs/srvExtractProperty")
(setf (get tum_alle_common_msgs::srvExtractProperty :request) tum_alle_common_msgs::srvExtractPropertyRequest)
(setf (get tum_alle_common_msgs::srvExtractProperty :response) tum_alle_common_msgs::srvExtractPropertyResponse)

(defmethod tum_alle_common_msgs::srvExtractPropertyRequest
  (:response () (instance tum_alle_common_msgs::srvExtractPropertyResponse :init)))

(setf (get tum_alle_common_msgs::srvExtractPropertyRequest :md5sum-) "b253553970eafd667f42fcf9d6384784")
(setf (get tum_alle_common_msgs::srvExtractPropertyRequest :datatype-) "tum_alle_common_msgs/srvExtractPropertyRequest")
(setf (get tum_alle_common_msgs::srvExtractPropertyRequest :definition-)
      "string command
string subcommand
---
string result

")

(setf (get tum_alle_common_msgs::srvExtractPropertyResponse :md5sum-) "b253553970eafd667f42fcf9d6384784")
(setf (get tum_alle_common_msgs::srvExtractPropertyResponse :datatype-) "tum_alle_common_msgs/srvExtractPropertyResponse")
(setf (get tum_alle_common_msgs::srvExtractPropertyResponse :definition-)
      "string command
string subcommand
---
string result

")



(provide :tum_alle_common_msgs/srvExtractProperty "b253553970eafd667f42fcf9d6384784")


