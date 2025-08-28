;;;;
;;;;;;
     (defvar *db* nil)
;;;;;;;;
(defun prompt-for-recbd()
  (make-rcd
   (parse-integer
                 (prompt-read "введите длину здания, м lb")
                 :junk-allowed t)
   (parse-integer
                 (prompt-read "введите ширину здания, м wb")
                 :junk-allowed t)
   (parse-integer
                (prompt-read "введите высоту здания, м hb")
                :junk-allowed t)
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))
                           
                         

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun make-rcd(lb wb hb)
  (push  
       (list :lb lb :wb wb :hb hb) *db*))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                                                                                                                                                                                                                                                                                                                                                                       