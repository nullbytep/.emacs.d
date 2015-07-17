;; 日本語の設定（UTF-8）
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(define-key global-map [?¥] [?\\])
;; ¥の代わりにバックスラッシュを入力する

;; フォントの設定
;; 出典：http://sakito.jp/emacs/emacs23.html
(cond
 ((and (string-match "apple-darwin" system-configuration)
  ;; only on mac
  (when (fboundp 'create-fontset-from-ascii-font)
    (create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlokakugo")
    (set-fontset-font "fontset-menlokakugo"
                      'unicode
                      (font-spec :family "Hiragino Kaku Gothic ProN" :size 12)
                      nil
                      'append)
    (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo")))
  )))

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)
