;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msgCategorisedSpeech)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msgCategorisedSpeech (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSGCATEGORISEDSPEECH")
  (make-package "TUM_ALLE_COMMON_MSGS::MSGCATEGORISEDSPEECH"))

(in-package "ROS")
;;//! \htmlinclude msgCategorisedSpeech.msg.html


(defclass tum_alle_common_msgs::msgCategorisedSpeech
  :super ros::object
  :slots (_name _location _object ))

(defmethod tum_alle_common_msgs::msgCategorisedSpeech
  (:init
   (&key
    ((:name __name) "")
    ((:location __location) "")
    ((:object __object) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _location (string __location))
   (setq _object (string __object))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _location
    4 (length _location)
    ;; string _object
    4 (length _object)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msgCategorisedSpeech :md5sum-) "cf1b457a008f8c8620b2e8077ee378e0")
(setf (get tum_alle_common_msgs::msgCategorisedSpeech :datatype-) "tum_alle_common_msgs/msgCategorisedSpeech")
(setf (get tum_alle_common_msgs::msgCategorisedSpeech :definition-)
      "string name
string location
string object

")



(provide :tum_alle_common_msgs/msgCategorisedSpeech "cf1b457a008f8c8620b2e8077ee378e0")


