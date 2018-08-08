;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvCupboardDoor)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvCupboardDoor (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOOR")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOOR"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOORREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOORREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOORRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCUPBOARDDOORRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvCupboardDoorRequest
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::srvCupboardDoorRequest
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

(defclass tum_alle_common_msgs::srvCupboardDoorResponse
  :super ros::object
  :slots (_position _door_detected ))

(defmethod tum_alle_common_msgs::srvCupboardDoorResponse
  (:init
   (&key
    ((:position __position) "")
    ((:door_detected __door_detected) nil)
    )
   (send-super :init)
   (setq _position (string __position))
   (setq _door_detected __door_detected)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:door_detected
   (&optional __door_detected)
   (if __door_detected (setq _door_detected __door_detected)) _door_detected)
  (:serialization-length
   ()
   (+
    ;; string _position
    4 (length _position)
    ;; bool _door_detected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _position
       (write-long (length _position) s) (princ _position s)
     ;; bool _door_detected
       (if _door_detected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _position
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _door_detected
     (setq _door_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvCupboardDoor
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvCupboardDoor :md5sum-) "ccf14741459eac4d4f2f5a05c6840a9d")
(setf (get tum_alle_common_msgs::srvCupboardDoor :datatype-) "tum_alle_common_msgs/srvCupboardDoor")
(setf (get tum_alle_common_msgs::srvCupboardDoor :request) tum_alle_common_msgs::srvCupboardDoorRequest)
(setf (get tum_alle_common_msgs::srvCupboardDoor :response) tum_alle_common_msgs::srvCupboardDoorResponse)

(defmethod tum_alle_common_msgs::srvCupboardDoorRequest
  (:response () (instance tum_alle_common_msgs::srvCupboardDoorResponse :init)))

(setf (get tum_alle_common_msgs::srvCupboardDoorRequest :md5sum-) "ccf14741459eac4d4f2f5a05c6840a9d")
(setf (get tum_alle_common_msgs::srvCupboardDoorRequest :datatype-) "tum_alle_common_msgs/srvCupboardDoorRequest")
(setf (get tum_alle_common_msgs::srvCupboardDoorRequest :definition-)
      "string command
---
string position
bool   door_detected

")

(setf (get tum_alle_common_msgs::srvCupboardDoorResponse :md5sum-) "ccf14741459eac4d4f2f5a05c6840a9d")
(setf (get tum_alle_common_msgs::srvCupboardDoorResponse :datatype-) "tum_alle_common_msgs/srvCupboardDoorResponse")
(setf (get tum_alle_common_msgs::srvCupboardDoorResponse :definition-)
      "string command
---
string position
bool   door_detected

")



(provide :tum_alle_common_msgs/srvCupboardDoor "ccf14741459eac4d4f2f5a05c6840a9d")


