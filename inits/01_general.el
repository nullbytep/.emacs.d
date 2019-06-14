;; load-paths
;; (add-to-list 'load-path "~/.emacs.d/")

;; set default direcotory to home
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;; Startup Screen
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; tabs and indent
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; enable commands disabled by default
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; recentf
(recentf-mode 1)
(setq recentf-max-menu-items 8)
(setq recentf-max-saved-items 512)

;; create backup file in ~/.emacs.d/backup
(setq make-backup-files t)
(setq backup-directory-alist
      '((".*" . (expand-file-name "~/.emacs.d/backup"))))

;; create auto-save file in ~/.emacs.d/backup
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/auto-save-files/") t)))

;; don't create lock file
(setq create-lockfiles nil)

;; Gnuserv
(autoload 'gnuserv-start "gnuserv-compat"
  "Allow this Emacs process to be a server for client processes." t)
(server-start)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; M-x history
(setq desktop-globals-to-save '(extended-command-history))
(setq desktop-files-not-to-save "")
(desktop-save-mode 1)

;; window.el (window state saving)
(require 'windows)
(setq win:switch-prefix "\C-z")
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe emacs" t)

(define-key global-map win:switch-prefix nil)
(mapc
 '#(lambda (n) (define-key global-map (concat "\C-z" n) 'win-switch-to-window))
 '("1" "2" "3" "4" "5" "6" "7" "8" "9"))
(define-key global-map "\C-z\C-l" 'win-resume-local)
(define-key global-map "\C-z\C-n" 'win-next-window)
(define-key global-map "\C-z\C-p" 'win-prev-window)
(define-key global-map "\C-z\C-r" 'win-resume-menu)
(define-key global-map "\C-z\C-s" 'win-switch-task)
(define-key global-map "\C-z\C-w" 'win-menu)
(define-key global-map "\C-z " 'win-toggle-window)
(define-key global-map "\C-z!" 'win-delete-current-window)
(define-key global-map "\C-z-" 'win-recover-recent-winconf)
(define-key global-map "\C-z=" 'win-switch-menu)
(define-key global-map "\C-zn" 'win-next-window)
(define-key global-map "\C-zp" 'win-prev-window)

