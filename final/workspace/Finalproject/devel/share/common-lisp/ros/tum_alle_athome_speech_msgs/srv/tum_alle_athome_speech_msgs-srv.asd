
(cl:in-package :asdf)

(defsystem "tum_alle_athome_speech_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "srvGenerateAnswer" :depends-on ("_package_srvGenerateAnswer"))
    (:file "_package_srvGenerateAnswer" :depends-on ("_package"))
    (:file "srvQuestion" :depends-on ("_package_srvQuestion"))
    (:file "_package_srvQuestion" :depends-on ("_package"))
    (:file "srvTTS" :depends-on ("_package_srvTTS"))
    (:file "_package_srvTTS" :depends-on ("_package"))
  ))