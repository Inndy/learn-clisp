(defun fib_iter (m n i)
    (if (> i 1)
        (fib n (+ m n) (- i 1))
        m
    )
)

(defun fib_recursion(n)
    (if (<= n 2)
        1
        (+ (fib_recursion (- n 1)) (fib_recursion (- n 2)))
    )
)

(setq fib_cache '(0 1))

(defun fib_fast (n)
    (if (> (list-length fib_cache) n)
        (nth n fib_cache)
        (progn
            (setq result
                (+
                    (fib_fast (- n 1))
                    (fib_fast (- n 2))
                )
            )
            (setq fib_cache
                (append fib_cache (list result))
            )
            result
        )
    )
)

(defun print_fib (n)
    (format t "fib(~A) = ~A~%" n (fib_fast n))
)

(defun print_fibs (n)
    (if (> n 0)
        (progn
            (print_fibs (- n 1))
            (print_fib n)
        )
        NIL
    )
)

(print_fibs 10)
