(in-package :cl-user)

(print ">>> Building system....")
;; asdf and quicklisp are already loaded by the buildpack
;; so setup local-projects and load app

(defpackage :heroku
  (:use :cl)
  (:export :*app-dir*))
(in-package :heroku)

(defparameter *root-dir* (uiop:pathname-directory-pathname *load-pathname*))
(defparameter *app-dir* (merge-pathnames "local-projects/app/"))
;; Register projects in local-projects folder 
(push (merge-pathnames "local-projects/" *root-dir*) ql:*local-project-directories*)
(ql:register-local-projects)

(ql:quickload :app)

(print ">>> Done building system")

