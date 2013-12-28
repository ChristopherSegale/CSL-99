;;;; Author: Christopher Segale
;;;; Date: 12/27/2013

(defun flatten (orig-list)
  (if (eql orig-list nil)
      nil
      (let ((elem (car orig-list)) (rest-of-list (cdr orig-list)))
        (if (listp elem)
          (append (flatten elem) (flatten rest-of-list))
          (append (cons elem nil) (flatten rest-of-list))))))
