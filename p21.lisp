;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(load "p17.lisp")

(defun insert-at (obj sequence index)
  (let ((split-list (split sequence (1- index))))
    (append (first split-list) (list obj) (second split-list))))
