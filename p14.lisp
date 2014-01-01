;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun dupli (sequence)
  (let ((dupli-list '()))
    (dolist (elem sequence)
      (dotimes (n 2)
        (push elem dupli-list)))
    (reverse dupli-list)))
