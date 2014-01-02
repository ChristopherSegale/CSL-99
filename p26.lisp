;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun combination (length sequence)
  (let ((c-list '()))
    (labels ((comb1 (seq c length)
               (flet ((push-elem (elem)
                        (push elem c-list)))
               (when (>= (length seq) length)
                 (if (zerop length)
                   (return-from comb1 (funcall #'push-elem c)))
                 (comb1 (cdr seq) c length)
                 (comb1 (cdr seq) (cons (first seq) c) (1- length))))))
      (comb1 sequence nil length))))
