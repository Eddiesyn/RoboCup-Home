;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::send_box)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'send_box (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::SEND_BOX")
  (make-package "ALL_MSGS::SEND_BOX"))
(unless (find-package "ALL_MSGS::SEND_BOXREQUEST")
  (make-package "ALL_MSGS::SEND_BOXREQUEST"))
(unless (find-package "ALL_MSGS::SEND_BOXRESPONSE")
  (make-package "ALL_MSGS::SEND_BOXRESPONSE"))

(in-package "ROS")





(defclass all_msgs::send_boxRequest
  :super ros::object
  :slots (_id _x _y _height _width ))

(defmethod all_msgs::send_boxRequest
  (:init
   (&key
    ((:id __id) "")
    ((:x __x) 0)
    ((:y __y) 0)
    ((:height __height) 0)
    ((:width __width) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _height (round __height))
   (setq _width (round __width))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _height
    4
    ;; int32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _width
       (write-long _width s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass all_msgs::send_boxResponse
  :super ros::object
  :slots (_reply ))

(defmethod all_msgs::send_boxResponse
  (:init
   (&key
    ((:reply __reply) 0)
    )
   (send-super :init)
   (setq _reply (round __reply))
   self)
  (:reply
   (&optional __reply)
   (if __reply (setq _reply __reply)) _reply)
  (:serialization-length
   ()
   (+
    ;; int64 _reply
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _reply
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reply (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reply) (= (length (_reply . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reply . bv) 0) 0) s)
              (write-long (ash (elt (_reply . bv) 1) -1) s))
             ((and (class _reply) (= (length (_reply . bv)) 1)) ;; big1
              (write-long (elt (_reply . bv) 0) s)
              (write-long (if (>= _reply 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reply s)(write-long (if (>= _reply 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _reply
#+(or :alpha :irix6 :x86_64)
      (setf _reply (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reply (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass all_msgs::send_box
  :super ros::object
  :slots ())

(setf (get all_msgs::send_box :md5sum-) "70f3f768b0d3c60a6244d5a1ad1bc50b")
(setf (get all_msgs::send_box :datatype-) "all_msgs/send_box")
(setf (get all_msgs::send_box :request) all_msgs::send_boxRequest)
(setf (get all_msgs::send_box :response) all_msgs::send_boxResponse)

(defmethod all_msgs::send_boxRequest
  (:response () (instance all_msgs::send_boxResponse :init)))

(setf (get all_msgs::send_boxRequest :md5sum-) "70f3f768b0d3c60a6244d5a1ad1bc50b")
(setf (get all_msgs::send_boxRequest :datatype-) "all_msgs/send_boxRequest")
(setf (get all_msgs::send_boxRequest :definition-)
      "string id
int32 x
int32 y
int32 height
int32 width
---
int64 reply

")

(setf (get all_msgs::send_boxResponse :md5sum-) "70f3f768b0d3c60a6244d5a1ad1bc50b")
(setf (get all_msgs::send_boxResponse :datatype-) "all_msgs/send_boxResponse")
(setf (get all_msgs::send_boxResponse :definition-)
      "string id
int32 x
int32 y
int32 height
int32 width
---
int64 reply

")



(provide :all_msgs/send_box "70f3f768b0d3c60a6244d5a1ad1bc50b")


