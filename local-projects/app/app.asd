;;;; empty-project.asd

(asdf:defsystem #:app
  :description "Describe empty-project here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (:hunchentoot)
  :serial t
  :components ((:file "package")
               (:file "app")))

