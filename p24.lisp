;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(load "./p22.lisp")
(load "./p23.lisp")

(defun lotto-select (numbers limit)
  (rnd-select (range 1 limit) numbers))
