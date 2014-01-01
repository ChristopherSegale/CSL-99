;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defmacro modulop (number divisor)
  `(= (mod ,number ,divisor) 0))

(defun drop (sequence place)
  (let ((drop-list '()))
    (do ((n 0 (1+ n)))
        ((>= n (length sequence)))
      (if (modulop (1+ n) place)
        nil
        (push (elt sequence n) drop-list)))
    (reverse drop-list)))
