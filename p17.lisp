;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun split (sequence length)
  (let ((first-list '()) (rest-of-list sequence))
    (dotimes (n length)
      (push (pop rest-of-list) first-list))
  (list (reverse first-list) rest-of-list)))
