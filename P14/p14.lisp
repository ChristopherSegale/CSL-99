;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defun dupli (sequence)
  (let ((dupli-list '()))
    (dolist (elem sequence)
      (dotimes (n 2)
        (push elem dupli-list)))
    (return-from dupli (reverse dupli-list))))
