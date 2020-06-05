(require 'helm-config)
(helm-mode 1)
;; (helm-autoresize-mode 1)

(helm-projectile-on)

(defun my-helm-find-files ()
  (interactive)
  (helm :sources '(helm-source-buffers-list
                 helm-source-projectile-files-list
                 helm-source-occur
                 helm-source-recentf
                 helm-source-locate)
        :buffer "*my-helm-find-files*"))

(setq helm-recentf-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-buffers-fuzzy-matching t
      helm-M-x-fuzzy-match t)

(setq helm-ff-file-name-history-use-recentf t)
