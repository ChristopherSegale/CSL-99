;;;; Author: Christopher Segale
;;;; Date: 12/27/2013

(defun compress (sequence)
  (let ((compressed-list '()) (prev-elem nil))
    (loop for elem in sequence do
      (if (equal elem prev-elem)
        nil
        (progn
          (push elem compressed-list)
          (setf prev-elem elem))))
    (return-from compress (reverse compressed-list))))
