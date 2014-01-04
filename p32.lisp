;;;; Author: Christopher Segale
;;;; Date: 01/03/2014

(defun euclid-gcd (a b)
  (if (zerop b)
    (return-from euclid-gcd a)
    (euclid-gcd b (mod a b))))
