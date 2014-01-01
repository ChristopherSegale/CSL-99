;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun rotate (sequence place)
  (if (> 0 place)
    (setf place (+ place (length sequence))))
  (let ((rotated-list sequence) (temp-list '()))
    (dotimes (n place)
      (push (pop rotated-list) temp-list))
  (append rotated-list (reverse temp-list))))
