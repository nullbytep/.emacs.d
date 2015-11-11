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

;; macros ----------------------------------------------------------------------

;; indent buffer
(global-set-key (kbd "C-x <backtab>") 'indent-buffer)

(global-set-key (kbd "C-#") 'comment-or-uncomment-region)


;; yasnippet
;;トリガーキーをTABからSPCに変更
(define-key yas-minor-mode-map (kbd "SPC") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
