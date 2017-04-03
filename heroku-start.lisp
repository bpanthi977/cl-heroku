;; Load the libraries required  (here only hunchentoot)
(ql:quickload :hunchentoot)

;; Start the server
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port (parse-integer (uiop:getenv "PORT") :junk-allowed t)))
(loop (sleep 1000))
