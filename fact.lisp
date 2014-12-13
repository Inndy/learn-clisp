(defun fact (n)
    (if (<= n 2)
        n
        (*
            (fact (- n 1))
            n
        )
    )
)

(defun print_fact (n)
    (format t "~A! = ~A~%" n (fact n))
)

(defun print_facts (n)
    (if (> n 1)
        (print_facts (- n 1))
        NIL
    )
    (print_fact n)
)

(print_facts 16)
