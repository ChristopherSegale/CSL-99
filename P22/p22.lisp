;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun range (n k)
  (if (not (and (numberp n) (numberp k)))
    nil
    (if (= n k)
      (list n)
      (if (< n k)
        (loop for i from n upto k collect i)
        (loop for i from n downto k collect i)))))
