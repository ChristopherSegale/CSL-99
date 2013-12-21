;;;; Christopher Segale
;;;; Date: 12/20/2013

(defun nth-element (list n)
  (if (endp list)
    (format t "empty list")
    (elt list n)))
