;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvAnswerReasoning)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvAnswerReasoning (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONING")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONING"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONINGREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONINGREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONINGRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVANSWERREASONINGRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvAnswerReasoningRequest
  :super ros::object
  :slots (_intent _properties _values ))

(defmethod tum_alle_common_msgs::srvAnswerReasoningRequest
  (:init
   (&key
    ((:intent __intent) "")
    ((:properties __properties) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:values __values) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _intent (string __intent))
   (setq _properties __properties)
   (setq _values __values)
   self)
  (:intent
   (&optional __intent)
   (if __intent (setq _intent __intent)) _intent)
  (:properties
   (&optional __properties)
   (if __properties (setq _properties __properties)) _properties)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _intent
    4 (length _intent)
    ;; string[] _properties
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _properties)) 4
    ;; string[] _values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _intent
       (write-long (length _intent) s) (princ _intent s)
     ;; string[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _intent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _properties i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvAnswerReasoningResponse
  :super ros::object
  :slots (_answer ))

(defmethod tum_alle_common_msgs::srvAnswerReasoningResponse
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

(defclass tum_alle_common_msgs::srvAnswerReasoning
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvAnswerReasoning :md5sum-) "678dbec11527080c5219c3331bbb3138")
(setf (get tum_alle_common_msgs::srvAnswerReasoning :datatype-) "tum_alle_common_msgs/srvAnswerReasoning")
(setf (get tum_alle_common_msgs::srvAnswerReasoning :request) tum_alle_common_msgs::srvAnswerReasoningRequest)
(setf (get tum_alle_common_msgs::srvAnswerReasoning :response) tum_alle_common_msgs::srvAnswerReasoningResponse)

(defmethod tum_alle_common_msgs::srvAnswerReasoningRequest
  (:response () (instance tum_alle_common_msgs::srvAnswerReasoningResponse :init)))

(setf (get tum_alle_common_msgs::srvAnswerReasoningRequest :md5sum-) "678dbec11527080c5219c3331bbb3138")
(setf (get tum_alle_common_msgs::srvAnswerReasoningRequest :datatype-) "tum_alle_common_msgs/srvAnswerReasoningRequest")
(setf (get tum_alle_common_msgs::srvAnswerReasoningRequest :definition-)
      "string intent
string[] properties
string[] values
---
string answer

")

(setf (get tum_alle_common_msgs::srvAnswerReasoningResponse :md5sum-) "678dbec11527080c5219c3331bbb3138")
(setf (get tum_alle_common_msgs::srvAnswerReasoningResponse :datatype-) "tum_alle_common_msgs/srvAnswerReasoningResponse")
(setf (get tum_alle_common_msgs::srvAnswerReasoningResponse :definition-)
      "string intent
string[] properties
string[] values
---
string answer

")



(provide :tum_alle_common_msgs/srvAnswerReasoning "678dbec11527080c5219c3331bbb3138")


