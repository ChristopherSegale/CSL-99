;;;; Author: Christopher Segale
;;;; Date: 12/20/2013

(defun last-two-list (list)
  (if (endp list)
    (format t "empty list.")
      (if (endp (rest list))
        (format t "list too short.")
        (last list 2))))
