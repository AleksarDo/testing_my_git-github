

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun get-int()
"для ввода целых чисел"
  (loop
(format t "только целое число")
(setq intval (read))
    (if (typep intval 'integer)
        (return intval)
        )))

(defun setadb()
  (print
        "input lb, lengh building on the end B")
  (setq lb (get-int))
  )