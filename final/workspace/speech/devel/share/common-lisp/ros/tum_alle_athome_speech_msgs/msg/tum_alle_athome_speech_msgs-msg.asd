
(cl:in-package :asdf)

(defsystem "tum_alle_athome_speech_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msgTTSState" :depends-on ("_package_msgTTSState"))
    (:file "_package_msgTTSState" :depends-on ("_package"))
  ))