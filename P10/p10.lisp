;;;; Author: Christopher Segale
;;;; Date: 12/27/2013

(defun encode (sequence)
  (let ((encoded-list '()) (count 1) (prev-elem nil))
    (dolist (elem sequence)
      (if (equal elem prev-elem)
        (incf (car (car encoded-list)))
        (progn
          (push '() encoded-list)
          (push elem (car encoded-list))
          (push count (car encoded-list))
          (setf prev-elem elem))))
    (return-from encode (reverse encoded-list))))
