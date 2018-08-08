;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msg2DPrediction)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msg2DPrediction (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSG2DPREDICTION")
  (make-package "TUM_ALLE_COMMON_MSGS::MSG2DPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude msg2DPrediction.msg.html


(defclass tum_alle_common_msgs::msg2DPrediction
  :super ros::object
  :slots (_label _confidence _rect ))

(defmethod tum_alle_common_msgs::msg2DPrediction
  (:init
   (&key
    ((:label __label) "")
    ((:confidence __confidence) 0.0)
    ((:rect __rect) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _confidence (float __confidence))
   (setq _rect __rect)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:rect
   (&optional __rect)
   (if __rect (setq _rect __rect)) _rect)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float64 _confidence
    8
    ;; int32[4] _rect
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32[4] _rect
     (dotimes (i 4)
       (write-long (elt _rect i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32[4] _rect
   (dotimes (i (length _rect))
     (setf (elt _rect i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msg2DPrediction :md5sum-) "e72cd172d1661b939105f76a5f0e9bca")
(setf (get tum_alle_common_msgs::msg2DPrediction :datatype-) "tum_alle_common_msgs/msg2DPrediction")
(setf (get tum_alle_common_msgs::msg2DPrediction :definition-)
      "string    label
float64   confidence
int32[4]  rect
#geometry_msgs/Point[] object_centers

")



(provide :tum_alle_common_msgs/msg2DPrediction "e72cd172d1661b939105f76a5f0e9bca")


