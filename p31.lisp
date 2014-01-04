;;;; Author: Christopher Segale
;;;; Date: 01/03/2014

(defun primep (n)
  (if (= n 1)
    t
    (if (= n 2)
      nil
      (progn
        (if (evenp n)
          nil
          (progn
            (do ((f 3 (+ 2 f)))
                ((> f (isqrt n)))
              (if (zerop (mod n f))
                (return-from primep nil)))
            (return-from primep t)))))))
