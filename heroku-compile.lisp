(in-package :cl-user)

(print ">>> Building system....")
;; asdf and quicklisp are already loaded by the buildpack
;; so load our libraries here
(ql:quickload :hunchentoot)
(print ">>> Done building system")

;; change the file just to invoke recompilation at heroku: 27
