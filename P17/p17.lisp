;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defun split (sequence length)
  (let ((first-list '()) (rest-of-list sequence))
    (dotimes (n length)
      (push (pop rest-of-list) first-list))
  (return-from split (list (reverse first-list) rest-of-list))))
