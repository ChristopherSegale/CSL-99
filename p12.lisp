;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun decode (sequence)
  (let ((decoded-list '()))
    (dolist (elem sequence)
      (if (listp elem)
        (dotimes (n (first elem))
          (push (second elem) decoded-list))
        (push elem decoded-list)))
    (reverse decoded-list)))
