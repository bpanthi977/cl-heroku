;; Register projects in local-projects folder 
(defparameter *app-dir* (uiop:pathname-directory-pathname *load-pathname*))
(push (merge-pathnames "local-projects/" *app-dir*) ql:*local-project-directories*)
(ql:register-local-projects)

;; Load the libraries required  (here only hunchentoot)
(ql:quickload :hunchentoot)

;; Start the server
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port (parse-integer (uiop:getenv "PORT") :junk-allowed t)))

;; Say hello when site is loaded
(hunchentoot:define-easy-handler (hello :uri "/") (name)
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "Hello~@[ ~A~]! ~% It works! Enjoy !!" name))

(loop (sleep 1000))
