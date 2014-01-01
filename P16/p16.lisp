;;;; Author: Christopher Segale
;;;; Date: 12/31/2013

(defmacro modulop (number divisor)
  `(= (mod ,number ,divisor) 0))

(defun drop (sequence place)
  (let ((drop-list '()))
    (do ((n 0 (1+ n)))
        ((>= n (length sequence)))
      (if (modulop (1+ n) place)
        nil
        (push (elt sequence n) drop-list)))
    (return-from drop (reverse drop-list))))
