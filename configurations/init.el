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

;; other configurations
;; load all ~/.emacs.d/configurations/*el files
(mapc 'load-file
      (remove-if '(lambda (filename)
                    ;; ignore this file (init.el)
                    (or (string-match load-file-name filename)
                        (string-match "\\([#~]\\)" filename)))
                 (directory-files (locate-user-emacs-file "configurations")
                                  t "\\.el$")))


