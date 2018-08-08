;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvCostmap)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvCostmap (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAP")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAP"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAPREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAPREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAPRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVCOSTMAPRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvCostmapRequest
  :super ros::object
  :slots (_x _y ))

(defmethod tum_alle_common_msgs::srvCostmapRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvCostmapResponse
  :super ros::object
  :slots (_reply ))

(defmethod tum_alle_common_msgs::srvCostmapResponse
  (:init
   (&key
    ((:reply __reply) nil)
    )
   (send-super :init)
   (setq _reply __reply)
   self)
  (:reply
   (&optional __reply)
   (if __reply (setq _reply __reply)) _reply)
  (:serialization-length
   ()
   (+
    ;; bool _reply
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reply
       (if _reply (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reply
     (setq _reply (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvCostmap
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvCostmap :md5sum-) "7d4bdfdbe811139a2c1fad39419d527f")
(setf (get tum_alle_common_msgs::srvCostmap :datatype-) "tum_alle_common_msgs/srvCostmap")
(setf (get tum_alle_common_msgs::srvCostmap :request) tum_alle_common_msgs::srvCostmapRequest)
(setf (get tum_alle_common_msgs::srvCostmap :response) tum_alle_common_msgs::srvCostmapResponse)

(defmethod tum_alle_common_msgs::srvCostmapRequest
  (:response () (instance tum_alle_common_msgs::srvCostmapResponse :init)))

(setf (get tum_alle_common_msgs::srvCostmapRequest :md5sum-) "7d4bdfdbe811139a2c1fad39419d527f")
(setf (get tum_alle_common_msgs::srvCostmapRequest :datatype-) "tum_alle_common_msgs/srvCostmapRequest")
(setf (get tum_alle_common_msgs::srvCostmapRequest :definition-)
      "float32 x
float32 y
---
bool reply

")

(setf (get tum_alle_common_msgs::srvCostmapResponse :md5sum-) "7d4bdfdbe811139a2c1fad39419d527f")
(setf (get tum_alle_common_msgs::srvCostmapResponse :datatype-) "tum_alle_common_msgs/srvCostmapResponse")
(setf (get tum_alle_common_msgs::srvCostmapResponse :definition-)
      "float32 x
float32 y
---
bool reply

")



(provide :tum_alle_common_msgs/srvCostmap "7d4bdfdbe811139a2c1fad39419d527f")


