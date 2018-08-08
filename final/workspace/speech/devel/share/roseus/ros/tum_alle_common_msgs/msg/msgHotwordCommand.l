;; Auto-generated. Do not edit!


(when (boundp 'tum_alle_common_msgs::msgHotwordCommand)
  (if (not (find-package "TUM_ALLE_COMMON_MSGS"))
    (make-package "TUM_ALLE_COMMON_MSGS"))
  (shadow 'msgHotwordCommand (find-package "TUM_ALLE_COMMON_MSGS")))
(unless (find-package "TUM_ALLE_COMMON_MSGS::MSGHOTWORDCOMMAND")
  (make-package "TUM_ALLE_COMMON_MSGS::MSGHOTWORDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude msgHotwordCommand.msg.html


(defclass tum_alle_common_msgs::msgHotwordCommand
  :super ros::object
  :slots (_command ))

(defmethod tum_alle_common_msgs::msgHotwordCommand
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tum_alle_common_msgs::msgHotwordCommand :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get tum_alle_common_msgs::msgHotwordCommand :datatype-) "tum_alle_common_msgs/msgHotwordCommand")
(setf (get tum_alle_common_msgs::msgHotwordCommand :definition-)
      "# Contains the last hotword command recognised
# By tum_alle_athome_speech_hotword published at:
# \"/hotword_command\"
# the command will be recognised when saying:
# \"Tiago $COMMAND\", with command having the possible values of:
# say, follow, bring, move, start, wait, move
string command

")



(provide :tum_alle_common_msgs/msgHotwordCommand "cba5e21e920a3a2b7b375cb65b64cdea")


