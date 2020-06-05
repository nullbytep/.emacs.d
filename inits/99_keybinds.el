;; Global ----------------------------------------------------------------------

;; switching buffers
(global-set-key '[(control tab)]       'next-buffer)
(global-set-key '[(control shift tab)] 'previous-buffer)

;; switching window
(global-set-key [(meta o)] 'next-multiframe-window)
(global-set-key [(meta shift o)] 'previous-multiframe-window)

;; tweek window width
(global-set-key [(control ^)] 'enlarge-window)
(global-set-key [(control ~)] 'shrink-window)
(global-set-key [(control .)] 'enlarge-window-horizontally)
(global-set-key [(control >)] 'shrink-window-horizontally)

;; use regex as default in search / replace
(global-set-key [(control s)] 'isearch-forward-regexp)
(global-set-key [(control meta s)] 'isearch-forward)
(global-set-key [(control r)] 'isearch-backward-regexp)
(global-set-key [(control meta r)] 'isearch-backward)
(global-set-key [(meta %)] 'query-replace-regexp)
(global-set-key [(control meta %)] 'query-replace)

;; CommandとOptionを入れ替える
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; macros ----------------------------------------------------------------------

;; indent buffer
(global-set-key (kbd "C-x <backtab>") 'indent-buffer)

(global-set-key (kbd "C-#") 'comment-or-uncomment-region)


;; yasnippet
;;トリガーキーをTABからSPCに変更
(define-key yas-minor-mode-map (kbd "SPC") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(global-set-key (kbd "<backtab>") 'yas/expand)

;; Helm key binds --------------------------------------------------------------

;; finding files
(global-set-key (kbd "C-x f") 'my-helm-find-files)
(global-set-key (kbd "C-x F") 'set-fill-column)  ;; move from C-x f
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "S-M-x") 'execute-extended-command)  ;; move from M-x

;; modify tab key's behavior on minibuffer
;; For find-file etc.
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
