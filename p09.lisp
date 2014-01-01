;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun packed (sequence)
  (let ((packed-list '()) (prev-elem nil))
    (loop for elem in sequence do
      (if (equal elem prev-elem)
        (push elem (car packed-list))
        (progn
          (push '() packed-list)
          (push elem (car packed-list))
          (setf prev-elem elem))))
    (reverse packed-list)))
