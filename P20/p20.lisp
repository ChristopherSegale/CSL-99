;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun remove-at (sequence index)
  (let ((removed-list '()))
    (dotimes (n (length sequence))
      (if (= (1+ n) index)
        nil
        (push (elt sequence n) removed-list)))
    (reverse removed-list)))
