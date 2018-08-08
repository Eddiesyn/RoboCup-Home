
(cl:in-package :asdf)

(defsystem "perception_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "send_flags" :depends-on ("_package_send_flags"))
    (:file "_package_send_flags" :depends-on ("_package"))
  ))