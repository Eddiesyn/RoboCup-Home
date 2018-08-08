;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvSpeechRecognition)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvSpeechRecognition (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITION")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITION"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITIONREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITIONREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITIONRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVSPEECHRECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvSpeechRecognitionRequest
  :super ros::object
  :slots (_action _command ))

(defmethod tum_alle_common_msgs::srvSpeechRecognitionRequest
  (:init
   (&key
    ((:action __action) "")
    ((:command __command) "")
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _command (string __command))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvSpeechRecognitionResponse
  :super ros::object
  :slots (_response ))

(defmethod tum_alle_common_msgs::srvSpeechRecognitionResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvSpeechRecognition
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvSpeechRecognition :md5sum-) "987dba923878aea186caeaaff32873b2")
(setf (get tum_alle_common_msgs::srvSpeechRecognition :datatype-) "tum_alle_common_msgs/srvSpeechRecognition")
(setf (get tum_alle_common_msgs::srvSpeechRecognition :request) tum_alle_common_msgs::srvSpeechRecognitionRequest)
(setf (get tum_alle_common_msgs::srvSpeechRecognition :response) tum_alle_common_msgs::srvSpeechRecognitionResponse)

(defmethod tum_alle_common_msgs::srvSpeechRecognitionRequest
  (:response () (instance tum_alle_common_msgs::srvSpeechRecognitionResponse :init)))

(setf (get tum_alle_common_msgs::srvSpeechRecognitionRequest :md5sum-) "987dba923878aea186caeaaff32873b2")
(setf (get tum_alle_common_msgs::srvSpeechRecognitionRequest :datatype-) "tum_alle_common_msgs/srvSpeechRecognitionRequest")
(setf (get tum_alle_common_msgs::srvSpeechRecognitionRequest :definition-)
      "

string action
string command
---
bool response

")

(setf (get tum_alle_common_msgs::srvSpeechRecognitionResponse :md5sum-) "987dba923878aea186caeaaff32873b2")
(setf (get tum_alle_common_msgs::srvSpeechRecognitionResponse :datatype-) "tum_alle_common_msgs/srvSpeechRecognitionResponse")
(setf (get tum_alle_common_msgs::srvSpeechRecognitionResponse :definition-)
      "

string action
string command
---
bool response

")



(provide :tum_alle_common_msgs/srvSpeechRecognition "987dba923878aea186caeaaff32873b2")


