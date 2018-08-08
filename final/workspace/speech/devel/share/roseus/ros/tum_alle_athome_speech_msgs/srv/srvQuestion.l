;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_athome_speech_msgs::srvQuestion)
  (if (not (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
    (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS"))
  (shadow 'srvQuestion (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS")))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTION")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTION"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTIONREQUEST")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTIONREQUEST"))
(unless (find-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTIONRESPONSE")
  (make-package "TUM_ALLE_ATHOME_SPEECH_MSGS::SRVQUESTIONRESPONSE"))

(in-package "ROS")





(defclass tum_alle_athome_speech_msgs::srvQuestionRequest
  :super ros::object
  :slots (_question ))

(defmethod tum_alle_athome_speech_msgs::srvQuestionRequest
  (:init
   (&key
    ((:question __question) "")
    )
   (send-super :init)
   (setq _question (string __question))
   self)
  (:question
   (&optional __question)
   (if __question (setq _question __question)) _question)
  (:serialization-length
   ()
   (+
    ;; string _question
    4 (length _question)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _question
       (write-long (length _question) s) (princ _question s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _question
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _question (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tum_alle_athome_speech_msgs::srvQuestionResponse
  :super ros::object
  :slots (_answer ))

(defmethod tum_alle_athome_speech_msgs::srvQuestionResponse
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

(defclass tum_alle_athome_speech_msgs::srvQuestion
  :super ros::object
  :slots ())

(setf (get tum_alle_athome_speech_msgs::srvQuestion :md5sum-) "5d65eb218b12bd1167b81a6db1b2e25b")
(setf (get tum_alle_athome_speech_msgs::srvQuestion :datatype-) "tum_alle_athome_speech_msgs/srvQuestion")
(setf (get tum_alle_athome_speech_msgs::srvQuestion :request) tum_alle_athome_speech_msgs::srvQuestionRequest)
(setf (get tum_alle_athome_speech_msgs::srvQuestion :response) tum_alle_athome_speech_msgs::srvQuestionResponse)

(defmethod tum_alle_athome_speech_msgs::srvQuestionRequest
  (:response () (instance tum_alle_athome_speech_msgs::srvQuestionResponse :init)))

(setf (get tum_alle_athome_speech_msgs::srvQuestionRequest :md5sum-) "5d65eb218b12bd1167b81a6db1b2e25b")
(setf (get tum_alle_athome_speech_msgs::srvQuestionRequest :datatype-) "tum_alle_athome_speech_msgs/srvQuestionRequest")
(setf (get tum_alle_athome_speech_msgs::srvQuestionRequest :definition-)
      "string question
---
string answer

")

(setf (get tum_alle_athome_speech_msgs::srvQuestionResponse :md5sum-) "5d65eb218b12bd1167b81a6db1b2e25b")
(setf (get tum_alle_athome_speech_msgs::srvQuestionResponse :datatype-) "tum_alle_athome_speech_msgs/srvQuestionResponse")
(setf (get tum_alle_athome_speech_msgs::srvQuestionResponse :definition-)
      "string question
---
string answer

")



(provide :tum_alle_athome_speech_msgs/srvQuestion "5d65eb218b12bd1167b81a6db1b2e25b")


