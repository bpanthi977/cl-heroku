(in-package #:app)

;; Say hello when site is loaded
(hunchentoot:define-easy-handler (hello :uri "/") (name)
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "Hello~@[ ~A~]! ~% It works! Enjoy !!" name))

