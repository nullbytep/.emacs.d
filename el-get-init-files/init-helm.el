(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(defun my-helm-mini ()
  (interactive)
;;  (require 'helm-files)
  (helm :sources '(helm-source-recentf
                   helm-source-find-files)
        :input "/Users/Satoshi"
        :buffer "*helm find files and recenf*"))

(setq helm-recentf-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-buffers-fuzzy-matching t
      helm-M-x-fuzzy-match t)

;; key binds ------------------------------------------------------------------

;; finding files
(global-set-key (kbd "C-x f") 'helm-for-files)
(global-set-key (kbd "C-x F") 'set-fill-column)  ;; move from C-x f
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; modify tab key's behavior on minibuffer
;; For find-file etc.
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)

