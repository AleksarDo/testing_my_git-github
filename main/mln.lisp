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
;;; даданне параметрау у базу ;;;;;;;
;;; геаметрыя будынка ;;;;;;;;;;;;;;;
                                
(defun make-rcd(lb wb hb)
  (push  
       (list :lb lb :wb wb :hb hb) *db*))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                         
;;;; вылiчэнне плошчы збора дадзенных ;;;
;;;; будынка пры канцы b сеткi сiлкавання ;;;;
(defun a-bud-b()
  (push
               (+ 
    (* 
       (getf (car *db*) :lb)
       (getf (car *db*) :wb))
       (* 6 (getf (car *db*) :hb))
       (+ (getf (car *db*) :lb)
          (getf (car *db*) :wb))
       (* 9
           (getf (car *db*) :hb)
            (getf (car *db*) :hb)
            3.14)) *db*))     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; сохранение данных в файл ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun save-db (flname)
  (with-open-file (out flname
                       :direction :output
                       :if-exists :supersede)
    (with-standard-io-syntax 
       (print *db* out))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;===================================
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun load-db (flname)
  (with-open-file (in flname)
    (with-standard-io-syntax
     (setf *db* (read in )))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;_____________________________________
;;;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            