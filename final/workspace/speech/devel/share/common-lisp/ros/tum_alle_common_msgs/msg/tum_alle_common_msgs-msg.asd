
(cl:in-package :asdf)

(defsystem "tum_alle_common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
    (:file "msg2DPrediction" :depends-on ("_package_msg2DPrediction"))
    (:file "_package_msg2DPrediction" :depends-on ("_package"))
    (:file "msg2DRecognition" :depends-on ("_package_msg2DRecognition"))
    (:file "_package_msg2DRecognition" :depends-on ("_package"))
    (:file "msg3DPrediction" :depends-on ("_package_msg3DPrediction"))
    (:file "_package_msg3DPrediction" :depends-on ("_package"))
    (:file "msg3DRecognition" :depends-on ("_package_msg3DRecognition"))
    (:file "_package_msg3DRecognition" :depends-on ("_package"))
    (:file "msg3DTracking" :depends-on ("_package_msg3DTracking"))
    (:file "_package_msg3DTracking" :depends-on ("_package"))
    (:file "msgCategorisedSpeech" :depends-on ("_package_msgCategorisedSpeech"))
    (:file "_package_msgCategorisedSpeech" :depends-on ("_package"))
    (:file "msgFreeSpace" :depends-on ("_package_msgFreeSpace"))
    (:file "_package_msgFreeSpace" :depends-on ("_package"))
    (:file "msgGraspInfo" :depends-on ("_package_msgGraspInfo"))
    (:file "_package_msgGraspInfo" :depends-on ("_package"))
    (:file "msgHotwordCommand" :depends-on ("_package_msgHotwordCommand"))
    (:file "_package_msgHotwordCommand" :depends-on ("_package"))
    (:file "msgRegionOfInterest3D" :depends-on ("_package_msgRegionOfInterest3D"))
    (:file "_package_msgRegionOfInterest3D" :depends-on ("_package"))
    (:file "point3D" :depends-on ("_package_point3D"))
    (:file "_package_point3D" :depends-on ("_package"))
  ))