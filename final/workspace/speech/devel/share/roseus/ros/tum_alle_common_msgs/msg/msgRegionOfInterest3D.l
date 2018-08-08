;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msgRegionOfInterest3D)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msgRegionOfInterest3D (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSGREGIONOFINTEREST3D")
  (make-package "TUM_ALLE_COMMON_MSGS::MSGREGIONOFINTEREST3D"))

(in-package "ROS")
;;//! \htmlinclude msgRegionOfInterest3D.msg.html


(defclass tum_alle_common_msgs::msgRegionOfInterest3D
  :super ros::object
  :slots (_frame _x_offset _y_offset _z_offset _height _width _depth ))

(defmethod tum_alle_common_msgs::msgRegionOfInterest3D
  (:init
   (&key
    ((:frame __frame) "")
    ((:x_offset __x_offset) 0.0)
    ((:y_offset __y_offset) 0.0)
    ((:z_offset __z_offset) 0.0)
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _frame (string __frame))
   (setq _x_offset (float __x_offset))
   (setq _y_offset (float __y_offset))
   (setq _z_offset (float __z_offset))
   (setq _height (float __height))
   (setq _width (float __width))
   (setq _depth (float __depth))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:x_offset
   (&optional __x_offset)
   (if __x_offset (setq _x_offset __x_offset)) _x_offset)
  (:y_offset
   (&optional __y_offset)
   (if __y_offset (setq _y_offset __y_offset)) _y_offset)
  (:z_offset
   (&optional __z_offset)
   (if __z_offset (setq _z_offset __z_offset)) _z_offset)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; string _frame
    4 (length _frame)
    ;; float64 _x_offset
    8
    ;; float64 _y_offset
    8
    ;; float64 _z_offset
    8
    ;; float64 _height
    8
    ;; float64 _width
    8
    ;; float64 _depth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
     ;; float64 _x_offset
       (sys::poke _x_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_offset
       (sys::poke _y_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_offset
       (sys::poke _z_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x_offset
     (setq _x_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_offset
     (setq _y_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_offset
     (setq _z_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msgRegionOfInterest3D :md5sum-) "1e870a0c6556353ad469201e1bde951a")
(setf (get tum_alle_common_msgs::msgRegionOfInterest3D :datatype-) "tum_alle_common_msgs/msgRegionOfInterest3D")
(setf (get tum_alle_common_msgs::msgRegionOfInterest3D :definition-)
      "string  frame
float64 x_offset
float64 y_offset
float64 z_offset
float64 height
float64 width
float64 depth

")



(provide :tum_alle_common_msgs/msgRegionOfInterest3D "1e870a0c6556353ad469201e1bde951a")


