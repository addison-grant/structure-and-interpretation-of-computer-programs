
(load "library/nil.scm")

(load "library/1-to-4.scm")
(load "library/scale-list.scm")
(load "library/map.scm")
(load "library/scale-list-2.scm")
(load "library/square.scm")
(load "library/for-each.scm")

(scale-list 3 1-to-4)
(scale-list-2 10 1-to-4)
(map square 1-to-4)
(map (lambda (x) (+ 10 x)) 1-to-4)
(for-each square 1-to-4)
