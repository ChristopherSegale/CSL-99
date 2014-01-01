;;;; Author: Christopher Segale
;;;; Date: 01/01/2014

(defun rnd-select (sequence item-number)
  (let ((random-elements '()) (used-positions '()) (rand-position nil))
    (if (< (length sequence) (1- item-number))
      nil
      (progn 
        (dotimes (n item-number)
          (setf rand-position (random (1- (length sequence))))
          (if (find rand-position used-positions)
            (decf n)
            (progn
              (push (elt sequence rand-position) random-elements)
              (push rand-position used-positions))))
        (return-from rnd-select random-elements)))))
