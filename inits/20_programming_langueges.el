;; Javascript
(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; clojure-mode
;; (setq inferior-lisp-program "/usr/local/bin/lein repl")
;; (add-to-list 'exec-path "/usr/local/bin")

;; Read in PATH from .bash_profile
;; (if (not (getenv "TERM_PROGRAM"))
;;    (setenv "PATH"
;;      (shell-command-to-string "source $HOME/.bash_profile && printf $PATH")))

;; (add-hook 'clojure-mode-hook 'paredit-mode)

;; common lisp
(setq inferior-lisp-program "clisp")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (setq web-mode-style-padding 1)
  (setq web-mode-script-padding 1)
  (setq web-mode-block-padding 0))
(add-hook 'web-mode-hook 'my-web-mode-hook)

;; python-mode
(setq python-indent-offset 4)

;; JVM

;; load JAVA_HOME from shell environment
(let ((java-home-from-shell (replace-regexp-in-string 
                        "[ \t\n]*$" ""
                        (shell-command-to-string
                         "$SHELL --login -i -c 'echo $JAVA_HOME'"))))
  (setenv "JAVA_HOME" java-home-from-shell))
