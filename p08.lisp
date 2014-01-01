;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun compress (sequence)
  (let ((compressed-list '()) (prev-elem nil))
    (loop for elem in sequence do
      (if (equal elem prev-elem)
        nil
        (progn
          (push elem compressed-list)
          (setf prev-elem elem))))
    (reverse compressed-list)))
