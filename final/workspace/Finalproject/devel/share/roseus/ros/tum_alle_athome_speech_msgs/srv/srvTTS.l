;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_athome_speech_msgs::srvTTS)
  (if (not (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
    (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
  (shadow 'srvTTS (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS")))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTS")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTS"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTSREQUEST")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTSREQUEST"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTSRESPONSE")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVTTSRESPONSE"))

(in-package "ROS")





(defclass tum_alle_athome_speech_msgs::srvTTSRequest
  :super ros::object
  :slots (_text ))

(defmethod tum_alle_athome_speech_msgs::srvTTSRequest
  (:init
   (&key
    ((:text __text) "")
    )
   (send-super :init)
   (setq _text (string __text))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_athome_speech_msgs::srvTTSResponse
  :super ros::object
  :slots (_result ))

(defmethod tum_alle_athome_speech_msgs::srvTTSResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_athome_speech_msgs::srvTTS
  :super ros::object
  :slots ())

(setf (get tum_alle_athome_speech_msgs::srvTTS :md5sum-) "d4dde95938bb106b3c23e1eff4e5e29a")
(setf (get tum_alle_athome_speech_msgs::srvTTS :datatype-) "tum_alle_athome_speech_msgs/srvTTS")
(setf (get tum_alle_athome_speech_msgs::srvTTS :request) tum_alle_athome_speech_msgs::srvTTSRequest)
(setf (get tum_alle_athome_speech_msgs::srvTTS :response) tum_alle_athome_speech_msgs::srvTTSResponse)

(defmethod tum_alle_athome_speech_msgs::srvTTSRequest
  (:response () (instance tum_alle_athome_speech_msgs::srvTTSResponse :init)))

(setf (get tum_alle_athome_speech_msgs::srvTTSRequest :md5sum-) "d4dde95938bb106b3c23e1eff4e5e29a")
(setf (get tum_alle_athome_speech_msgs::srvTTSRequest :datatype-) "tum_alle_athome_speech_msgs/srvTTSRequest")
(setf (get tum_alle_athome_speech_msgs::srvTTSRequest :definition-)
      "string text
---
bool result
")

(setf (get tum_alle_athome_speech_msgs::srvTTSResponse :md5sum-) "d4dde95938bb106b3c23e1eff4e5e29a")
(setf (get tum_alle_athome_speech_msgs::srvTTSResponse :datatype-) "tum_alle_athome_speech_msgs/srvTTSResponse")
(setf (get tum_alle_athome_speech_msgs::srvTTSResponse :definition-)
      "string text
---
bool result
")



(provide :tum_alle_athome_speech_msgs/srvTTS "d4dde95938bb106b3c23e1eff4e5e29a")


