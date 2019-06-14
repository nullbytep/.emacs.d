(setq neo-theme (if (display-graphic-p) 'icons 'ascii))
(setq neo-autorefresh nil)
(setq neo-window-width 30)
(setq neo-show-hidden-files 1)
(setq neo-smart-open 1)
(setq projectile-switch-project-action 'neotree-projectile-action)

(defun neotree-project-dir ()
   "Open NeoTree using the git root."
   (interactive)
   (let ((project-dir (projectile-project-root))
         (file-name (buffer-file-name)))
     (if project-dir
         (if (neo-global--window-exists-p)
             (progn
               (neotree-dir project-dir)
                (neotree-find file-name)))
       (message "Could not find git project root."))))

(defun init-neotree-back-to-orig-window-after (c)
  (interactive)
  (lexical-let ((c c))
    (lambda ()
      (interactive)
      (funcall c) 
      (select-window (get-mru-window)))))

(global-set-key (kbd "C-c n t") (init-neotree-back-to-orig-window-after 'neotree-toggle))
(global-set-key (kbd "C-c n n") (init-neotree-back-to-orig-window-after 'neotree-refresh))
(global-set-key (kbd "C-c n p") (init-neotree-back-to-orig-window-after 'neotree-project-dir))
