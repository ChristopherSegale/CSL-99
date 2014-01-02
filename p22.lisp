;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun range (n k)
  (if (notevery #'numberp (list n k))
    nil
    (if (= n k)
      (list n)
      (if (< n k)
        (loop for i from n upto k collect i)
        (loop for i from n downto k collect i)))))
