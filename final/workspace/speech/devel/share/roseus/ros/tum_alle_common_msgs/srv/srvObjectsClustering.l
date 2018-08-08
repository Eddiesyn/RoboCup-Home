;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvObjectsClustering)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvObjectsClustering (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERING")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERING"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERINGREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERINGREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERINGRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVOBJECTSCLUSTERINGRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvObjectsClusteringRequest
  :super ros::object
  :slots (_position ))

(defmethod tum_alle_common_msgs::srvObjectsClusteringRequest
  (:init
   (&key
    ((:position __position) "")
    )
   (send-super :init)
   (setq _position (string __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; string _position
    4 (length _position)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _position
       (write-long (length _position) s) (princ _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _position
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvObjectsClusteringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod tum_alle_common_msgs::srvObjectsClusteringResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvObjectsClustering
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvObjectsClustering :md5sum-) "bb6e634cebd01083e2c908a49e7e0cc9")
(setf (get tum_alle_common_msgs::srvObjectsClustering :datatype-) "tum_alle_common_msgs/srvObjectsClustering")
(setf (get tum_alle_common_msgs::srvObjectsClustering :request) tum_alle_common_msgs::srvObjectsClusteringRequest)
(setf (get tum_alle_common_msgs::srvObjectsClustering :response) tum_alle_common_msgs::srvObjectsClusteringResponse)

(defmethod tum_alle_common_msgs::srvObjectsClusteringRequest
  (:response () (instance tum_alle_common_msgs::srvObjectsClusteringResponse :init)))

(setf (get tum_alle_common_msgs::srvObjectsClusteringRequest :md5sum-) "bb6e634cebd01083e2c908a49e7e0cc9")
(setf (get tum_alle_common_msgs::srvObjectsClusteringRequest :datatype-) "tum_alle_common_msgs/srvObjectsClusteringRequest")
(setf (get tum_alle_common_msgs::srvObjectsClusteringRequest :definition-)
      "string position
---
bool success
string message

")

(setf (get tum_alle_common_msgs::srvObjectsClusteringResponse :md5sum-) "bb6e634cebd01083e2c908a49e7e0cc9")
(setf (get tum_alle_common_msgs::srvObjectsClusteringResponse :datatype-) "tum_alle_common_msgs/srvObjectsClusteringResponse")
(setf (get tum_alle_common_msgs::srvObjectsClusteringResponse :definition-)
      "string position
---
bool success
string message

")



(provide :tum_alle_common_msgs/srvObjectsClustering "bb6e634cebd01083e2c908a49e7e0cc9")


