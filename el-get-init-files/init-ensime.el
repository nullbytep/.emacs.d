;; reference : https://github.com/ensime/ensime-emacs/wiki/Quick-Start-Guide#installing-the-ensime-sbt-plugin
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(setq ensime-completion-style 'auto-complete)

(defun scala/enable-eldoc ()
  "Show error message at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (and err (not (string= err "")) err)))))
  (eldoc-mode +1))

(add-hook 'ensime-mode-hook #'scala/enable-eldoc)

(define-key company-active-map [tab] nil)
