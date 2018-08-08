;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvIsDoorOpen)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvIsDoorOpen (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPEN")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPEN"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPENREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPENREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPENRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVISDOOROPENRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvIsDoorOpenRequest
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::srvIsDoorOpenRequest
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

(defclass tum_alle_common_msgs::srvIsDoorOpenResponse
  :super ros::object
  :slots (_isOpen ))

(defmethod tum_alle_common_msgs::srvIsDoorOpenResponse
  (:init
   (&key
    ((:isOpen __isOpen) nil)
    )
   (send-super :init)
   (setq _isOpen __isOpen)
   self)
  (:isOpen
   (&optional __isOpen)
   (if __isOpen (setq _isOpen __isOpen)) _isOpen)
  (:serialization-length
   ()
   (+
    ;; bool _isOpen
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isOpen
       (if _isOpen (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isOpen
     (setq _isOpen (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvIsDoorOpen
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvIsDoorOpen :md5sum-) "71761759cbee9765d6f47a7b9585bd82")
(setf (get tum_alle_common_msgs::srvIsDoorOpen :datatype-) "tum_alle_common_msgs/srvIsDoorOpen")
(setf (get tum_alle_common_msgs::srvIsDoorOpen :request) tum_alle_common_msgs::srvIsDoorOpenRequest)
(setf (get tum_alle_common_msgs::srvIsDoorOpen :response) tum_alle_common_msgs::srvIsDoorOpenResponse)

(defmethod tum_alle_common_msgs::srvIsDoorOpenRequest
  (:response () (instance tum_alle_common_msgs::srvIsDoorOpenResponse :init)))

(setf (get tum_alle_common_msgs::srvIsDoorOpenRequest :md5sum-) "71761759cbee9765d6f47a7b9585bd82")
(setf (get tum_alle_common_msgs::srvIsDoorOpenRequest :datatype-) "tum_alle_common_msgs/srvIsDoorOpenRequest")
(setf (get tum_alle_common_msgs::srvIsDoorOpenRequest :definition-)
      "string command
---
bool isOpen

")

(setf (get tum_alle_common_msgs::srvIsDoorOpenResponse :md5sum-) "71761759cbee9765d6f47a7b9585bd82")
(setf (get tum_alle_common_msgs::srvIsDoorOpenResponse :datatype-) "tum_alle_common_msgs/srvIsDoorOpenResponse")
(setf (get tum_alle_common_msgs::srvIsDoorOpenResponse :definition-)
      "string command
---
bool isOpen

")



(provide :tum_alle_common_msgs/srvIsDoorOpen "71761759cbee9765d6f47a7b9585bd82")


