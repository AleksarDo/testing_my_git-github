;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun get-int()
"для ввода целых чисел"
  (loop
(format t "только целое число")
(setq intval (read))
    (if (typep intval 'integer)
        (return intval)
        )))                                          