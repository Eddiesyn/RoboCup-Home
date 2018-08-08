;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_athome_speech_msgs::srvGenerateAnswer)
  (if (not (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
    (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
  (shadow 'srvGenerateAnswer (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS")))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWER")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWER"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWERREQUEST")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWERREQUEST"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWERRESPONSE")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVGENERATEANSWERRESPONSE"))

(in-package "ROS")





(defclass tum_alle_athome_speech_msgs::srvGenerateAnswerRequest
  :super ros::object
  :slots (_question _intention ))

(defmethod tum_alle_athome_speech_msgs::srvGenerateAnswerRequest
  (:init
   (&key
    ((:question __question) "")
    ((:intention __intention) "")
    )
   (send-super :init)
   (setq _question (string __question))
   (setq _intention (string __intention))
   self)
  (:question
   (&optional __question)
   (if __question (setq _question __question)) _question)
  (:intention
   (&optional __intention)
   (if __intention (setq _intention __intention)) _intention)
  (:serialization-length
   ()
   (+
    ;; string _question
    4 (length _question)
    ;; string _intention
    4 (length _intention)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _question
       (write-long (length _question) s) (princ _question s)
     ;; string _intention
       (write-long (length _intention) s) (princ _intention s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _question
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _question (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _intention
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intention (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_athome_speech_msgs::srvGenerateAnswerResponse
  :super ros::object
  :slots (_answer ))

(defmethod tum_alle_athome_speech_msgs::srvGenerateAnswerResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_athome_speech_msgs::srvGenerateAnswer
  :super ros::object
  :slots ())

(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswer :md5sum-) "20a4052d904bff6ea1be92753e941f66")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswer :datatype-) "tum_alle_athome_speech_msgs/srvGenerateAnswer")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswer :request) tum_alle_athome_speech_msgs::srvGenerateAnswerRequest)
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswer :response) tum_alle_athome_speech_msgs::srvGenerateAnswerResponse)

(defmethod tum_alle_athome_speech_msgs::srvGenerateAnswerRequest
  (:response () (instance tum_alle_athome_speech_msgs::srvGenerateAnswerResponse :init)))

(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerRequest :md5sum-) "20a4052d904bff6ea1be92753e941f66")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerRequest :datatype-) "tum_alle_athome_speech_msgs/srvGenerateAnswerRequest")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerRequest :definition-)
      "string question
string intention
---
string answer

")

(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerResponse :md5sum-) "20a4052d904bff6ea1be92753e941f66")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerResponse :datatype-) "tum_alle_athome_speech_msgs/srvGenerateAnswerResponse")
(setf (get tum_alle_athome_speech_msgs::srvGenerateAnswerResponse :definition-)
      "string question
string intention
---
string answer

")



(provide :tum_alle_athome_speech_msgs/srvGenerateAnswer "20a4052d904bff6ea1be92753e941f66")


