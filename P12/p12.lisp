;;;; Author: Christopher Segale
;;;; Date: 12/30/2013

(defun decode (sequence)
  (let ((decoded-list '()))
    (dolist (elem sequence)
      (if (listp elem)
        (dotimes (n (first elem))
          (push (second elem) decoded-list))
        (push elem decoded-list)))
    (return-from decode (reverse decoded-list))))
