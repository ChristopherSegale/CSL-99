;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defun slice (sequence index-one index-two)
  (let ((sliced-list '()))
    (dotimes (n (length sequence))
      (when (and (>= (1+ n) index-one) (<= (1+ n) index-two))
        (push (elt sequence n) sliced-list)))
  (reverse sliced-list)))
  
