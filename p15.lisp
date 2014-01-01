;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defun repli (sequence counter)
  (let ((repli-list '()))
    (dolist (elem sequence)
      (dotimes (c counter)
        (push elem repli-list)))
  (return-from repli (reverse repli-list))))
