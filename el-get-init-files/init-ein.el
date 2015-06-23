(eval-after-load 'ein-notebook
  '(progn
     (define-key ein:notebook-mode-map (kbd "M-n")
       'ein:worksheet-goto-next-input)
     (define-key ein:notebook-mode-map (kbd "M-p")
       'ein:worksheet-goto-prev-input)
     (define-key ein:notebook-mode-map (kbd "C-c C-n")
       'ein:worksheet-next-input-history)
     (define-key ein:notebook-mode-map (kbd "C-c C-p")
       'ein:worksheet-prev-input-history))) 

;;
(add-hook 'python-mode-hook (lambda () (if (buffer-file-name)
                                           (flymake-mode))))

;; popwin
(push '("^\*ein:tb.*$" :regexp t :noselect t)
      popwin:special-display-config)
