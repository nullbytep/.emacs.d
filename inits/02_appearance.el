;; hide menu / tool bars
(when (fboundp 'tool-bar-mode) (tool-bar-mode 0))
(when (fboundp 'menu-bar-mode) (menu-bar-mode 0))

;; select theme
(setq my-theme 'zenburn)
(if (member my-theme (custom-available-themes))
    (load-theme my-theme t)
  (message "Theme %s doesn't seem to be loaded (%s)" my-theme load-file-name))

;; show line and column number
(line-number-mode t)
(column-number-mode t)
(global-linum-mode t)
(global-hl-line-mode +1)

;; default screen size / frame split
(when window-system (set-frame-size (selected-frame) 170 45))
(split-window-horizontally)

;; default font size
;; (add-to-list 'default-frame-alist
;;              '('font . "-*-Menlo-normal-normal-normal-*-10-*-*-*-m-0-iso10646-1"))

;; highlight chars which exceeds max chars per a line
(add-hook 'c-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))))
(add-hook 'c++-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))))
(add-hook 'python-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))))
(add-hook 'java-mode-hook
  (lambda ()
    (font-lock-add-keywords nil
      '(("^[^\n]\\{100\\}\\(.*\\)$" 1 font-lock-warning-face t)))))

;; whitespace
(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         empty          ; 先頭/末尾の空行
                         ))

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))
(set-face-background 'whitespace-empty "#4a4a4a")
(set-face-background 'whitespace-trailing "#4c4c4c")
