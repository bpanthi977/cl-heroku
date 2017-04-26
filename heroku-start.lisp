(defparameter *root-dir* (uiop:pathname-directory-pathname *load-pathname*))
(load (merge-pathnames "heroku-compile.lisp" *root-dir*))

;;Start the server
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port (parse-integer (uiop:getenv "PORT") :junk-allowed t)))


(loop (sleep 1000))
