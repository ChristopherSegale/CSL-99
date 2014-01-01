;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun repli (sequence counter)
  (let ((repli-list '()))
    (dolist (elem sequence)
      (dotimes (c counter)
        (push elem repli-list)))
  (reverse repli-list)))
