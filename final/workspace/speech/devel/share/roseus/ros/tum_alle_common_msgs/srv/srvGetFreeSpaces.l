;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::srvGetFreeSpaces)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'srvGetFreeSpaces (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACES")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACES"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACESREQUEST")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACESREQUEST"))
(unless (find-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACESRESPONSE")
  (make-package "TUM_ALLE_COMMON_MSGS::SRVGETFREESPACESRESPONSE"))

(in-package "ROS")





(defclass tum_alle_common_msgs::srvGetFreeSpacesRequest
  :super ros::object
  :slots (_left_of _right_of ))

(defmethod tum_alle_common_msgs::srvGetFreeSpacesRequest
  (:init
   (&key
    ((:left_of __left_of) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msgFreeSpace :init) r)) r))
    ((:right_of __right_of) (let (r) (dotimes (i 0) (push (instance tum_alle_common_msgs::msgFreeSpace :init) r)) r))
    )
   (send-super :init)
   (setq _left_of __left_of)
   (setq _right_of __right_of)
   self)
  (:left_of
   (&rest __left_of)
   (if (keywordp (car __left_of))
       (send* _left_of __left_of)
     (progn
       (if __left_of (setq _left_of (car __left_of)))
       _left_of)))
  (:right_of
   (&rest __right_of)
   (if (keywordp (car __right_of))
       (send* _right_of __right_of)
     (progn
       (if __right_of (setq _right_of (car __right_of)))
       _right_of)))
  (:serialization-length
   ()
   (+
    ;; tum_alle_common_msgs/msgFreeSpace[] _left_of
    (apply #'+ (send-all _left_of :serialization-length)) 4
    ;; tum_alle_common_msgs/msgFreeSpace[] _right_of
    (apply #'+ (send-all _right_of :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tum_alle_common_msgs/msgFreeSpace[] _left_of
     (write-long (length _left_of) s)
     (dolist (elem _left_of)
       (send elem :serialize s)
       )
     ;; tum_alle_common_msgs/msgFreeSpace[] _right_of
     (write-long (length _right_of) s)
     (dolist (elem _right_of)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tum_alle_common_msgs/msgFreeSpace[] _left_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_of (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msgFreeSpace :init) r)) r))
     (dolist (elem- _left_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tum_alle_common_msgs/msgFreeSpace[] _right_of
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_of (let (r) (dotimes (i n) (push (instance tum_alle_common_msgs::msgFreeSpace :init) r)) r))
     (dolist (elem- _right_of)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetFreeSpacesResponse
  :super ros::object
  :slots (_success ))

(defmethod tum_alle_common_msgs::srvGetFreeSpacesResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tum_alle_common_msgs::srvGetFreeSpaces
  :super ros::object
  :slots ())

(setf (get tum_alle_common_msgs::srvGetFreeSpaces :md5sum-) "22e0f6037d1e4f620ad89e16963171eb")
(setf (get tum_alle_common_msgs::srvGetFreeSpaces :datatype-) "tum_alle_common_msgs/srvGetFreeSpaces")
(setf (get tum_alle_common_msgs::srvGetFreeSpaces :request) tum_alle_common_msgs::srvGetFreeSpacesRequest)
(setf (get tum_alle_common_msgs::srvGetFreeSpaces :response) tum_alle_common_msgs::srvGetFreeSpacesResponse)

(defmethod tum_alle_common_msgs::srvGetFreeSpacesRequest
  (:response () (instance tum_alle_common_msgs::srvGetFreeSpacesResponse :init)))

(setf (get tum_alle_common_msgs::srvGetFreeSpacesRequest :md5sum-) "22e0f6037d1e4f620ad89e16963171eb")
(setf (get tum_alle_common_msgs::srvGetFreeSpacesRequest :datatype-) "tum_alle_common_msgs/srvGetFreeSpacesRequest")
(setf (get tum_alle_common_msgs::srvGetFreeSpacesRequest :definition-)
      "msgFreeSpace[] left_of
msgFreeSpace[] right_of

================================================================================
MSG: tum_alle_common_msgs/msgFreeSpace
geometry_msgs/Point[] 	corners

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool           success

")

(setf (get tum_alle_common_msgs::srvGetFreeSpacesResponse :md5sum-) "22e0f6037d1e4f620ad89e16963171eb")
(setf (get tum_alle_common_msgs::srvGetFreeSpacesResponse :datatype-) "tum_alle_common_msgs/srvGetFreeSpacesResponse")
(setf (get tum_alle_common_msgs::srvGetFreeSpacesResponse :definition-)
      "msgFreeSpace[] left_of
msgFreeSpace[] right_of

================================================================================
MSG: tum_alle_common_msgs/msgFreeSpace
geometry_msgs/Point[] 	corners

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool           success

")



(provide :tum_alle_common_msgs/srvGetFreeSpaces "22e0f6037d1e4f620ad89e16963171eb")


