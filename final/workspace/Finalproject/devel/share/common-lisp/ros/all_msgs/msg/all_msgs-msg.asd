
(cl:in-package :asdf)

(defsystem "all_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Box" :depends-on ("_package_Box"))
    (:file "_package_Box" :depends-on ("_package"))
    (:file "Boxes" :depends-on ("_package_Boxes"))
    (:file "_package_Boxes" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectArray" :depends-on ("_package_ObjectArray"))
    (:file "_package_ObjectArray" :depends-on ("_package"))
    (:file "PointCloudArray" :depends-on ("_package_PointCloudArray"))
    (:file "_package_PointCloudArray" :depends-on ("_package"))
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
  ))