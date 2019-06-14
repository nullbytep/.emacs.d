(define-globalized-minor-mode my-global-rainbow-delimiters-mode rainbow-delimiters-mode
  (lambda () (rainbow-delimiters-mode 1)))

(my-global-rainbow-delimiters-mode 1)
