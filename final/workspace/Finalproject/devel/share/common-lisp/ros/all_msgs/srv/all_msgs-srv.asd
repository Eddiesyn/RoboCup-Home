
(cl:in-package :asdf)

(defsystem "all_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "send_box" :depends-on ("_package_send_box"))
    (:file "_package_send_box" :depends-on ("_package"))
    (:file "send_flags" :depends-on ("_package_send_flags"))
    (:file "_package_send_flags" :depends-on ("_package"))
    (:file "send_pos" :depends-on ("_package_send_pos"))
    (:file "_package_send_pos" :depends-on ("_package"))
    (:file "send_pose" :depends-on ("_package_send_pose"))
    (:file "_package_send_pose" :depends-on ("_package"))
  ))