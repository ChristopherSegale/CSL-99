;;;; Author: Christopher Segale
;;;; Date: 12/27/2013

(defun packed (sequence)
  (let ((packed-list '()) (prev-elem nil))
    (loop for elem in sequence do
      (if (equal elem prev-elem)
        (push elem (car packed-list))
        (progn
          (push '() packed-list)
          (push elem (car packed-list))
          (setf prev-elem elem))))
    (return-from packed (reverse packed-list))))
