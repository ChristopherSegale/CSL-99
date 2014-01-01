;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defun rotate (sequence place)
  (let ((rotated-list sequence) (temp-list '()))
    (dotimes (n place)
      (push (pop rotated-list) temp-list))
  (append rotated-list (reverse temp-list))))
