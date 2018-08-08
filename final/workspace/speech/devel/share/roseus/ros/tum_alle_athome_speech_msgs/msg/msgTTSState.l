;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_athome_speech_msgs::msgTTSState)
  (if (not (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
    (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
  (shadow 'msgTTSState (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS")))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::MSGTTSSTATE")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::MSGTTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude msgTTSState.msg.html


(defclass tum_alle_athome_speech_msgs::msgTTSState
  :super ros::object
  :slots (_state ))

(defmethod tum_alle_athome_speech_msgs::msgTTSState
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tum_alle_athome_speech_msgs::msgTTSState :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get tum_alle_athome_speech_msgs::msgTTSState :datatype-) "tum_alle_athome_speech_msgs/msgTTSState")
(setf (get tum_alle_athome_speech_msgs::msgTTSState :definition-)
      "string state
")



(provide :tum_alle_athome_speech_msgs/msgTTSState "af6d3a99f0fbeb66d3248fa4b3e675fb")


