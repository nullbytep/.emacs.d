(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

;; install el-get (if not already installed)
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; (setq el-get-dir "~/.emacs.d/el-get/packages")
;; (setq el-get-recipe-path (list "~/.emacs.d/el-get/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")

;; load packages managed by el-get
(load-file (locate-user-emacs-file "el-get-bundles.el"))

(require 'init-loader)
(init-loader-load)

