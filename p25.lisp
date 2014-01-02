;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(load "./p23.lisp")

(defun rnd-permu (sequence)
  (rnd-select sequence (length sequence)))
