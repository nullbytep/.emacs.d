(require 'helm-config)
(helm-mode 1)
;; (helm-autoresize-mode 1)

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

(setq helm-ff-file-name-history-use-recentf t)
