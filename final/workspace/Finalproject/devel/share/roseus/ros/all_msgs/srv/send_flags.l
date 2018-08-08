;; Auto-generated. Do not edit!


(when (boundp 'all_msgs::send_flags)
  (if (not (find-package "ALL_MSGS"))
    (make-package "ALL_MSGS"))
  (shadow 'send_flags (find-package "ALL_MSGS")))
(unless (find-package "ALL_MSGS::SEND_FLAGS")
  (make-package "ALL_MSGS::SEND_FLAGS"))
(unless (find-package "ALL_MSGS::SEND_FLAGSREQUEST")
  (make-package "ALL_MSGS::SEND_FLAGSREQUEST"))
(unless (find-package "ALL_MSGS::SEND_FLAGSRESPONSE")
  (make-package "ALL_MSGS::SEND_FLAGSRESPONSE"))

(in-package "ROS")





(defclass all_msgs::send_flagsRequest
  :super ros::object
  :slots (_flag ))

(defmethod all_msgs::send_flagsRequest
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int64 _flag
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _flag (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _flag) (= (length (_flag . bv)) 2)) ;; bignum
              (write-long (ash (elt (_flag . bv) 0) 0) s)
              (write-long (ash (elt (_flag . bv) 1) -1) s))
             ((and (class _flag) (= (length (_flag . bv)) 1)) ;; big1
              (write-long (elt (_flag . bv) 0) s)
              (write-long (if (>= _flag 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _flag s)(write-long (if (>= _flag 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
      (setf _flag (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _flag (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass all_msgs::send_flagsResponse
  :super ros::object
  :slots (_reply ))

(defmethod all_msgs::send_flagsResponse
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

(defclass all_msgs::send_flags
  :super ros::object
  :slots ())

(setf (get all_msgs::send_flags :md5sum-) "020bdbc33a7ee6b93f149ccfbb819f7f")
(setf (get all_msgs::send_flags :datatype-) "all_msgs/send_flags")
(setf (get all_msgs::send_flags :request) all_msgs::send_flagsRequest)
(setf (get all_msgs::send_flags :response) all_msgs::send_flagsResponse)

(defmethod all_msgs::send_flagsRequest
  (:response () (instance all_msgs::send_flagsResponse :init)))

(setf (get all_msgs::send_flagsRequest :md5sum-) "020bdbc33a7ee6b93f149ccfbb819f7f")
(setf (get all_msgs::send_flagsRequest :datatype-) "all_msgs/send_flagsRequest")
(setf (get all_msgs::send_flagsRequest :definition-)
      "
int64 flag
---

int64 reply

")

(setf (get all_msgs::send_flagsResponse :md5sum-) "020bdbc33a7ee6b93f149ccfbb819f7f")
(setf (get all_msgs::send_flagsResponse :datatype-) "all_msgs/send_flagsResponse")
(setf (get all_msgs::send_flagsResponse :definition-)
      "
int64 flag
---

int64 reply

")



(provide :all_msgs/send_flags "020bdbc33a7ee6b93f149ccfbb819f7f")


