;; 日本語の設定（UTF-8）
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(define-key global-map [?¥] [?\\])  ;; ¥の代わりにバックスラッシュを入力する

;; フォントの設定
;; 出典：http://sakito.jp/emacs/emacs23.html
(cond
 ((string-match "apple-darwin" system-configuration)
  ;; only on mac
  (when (fboundp 'create-fontset-from-ascii-font)
    (create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlokakugo")
    (set-fontset-font "fontset-menlokakugo"
                      'unicode
                      (font-spec :family "Hiragino Kaku Gothic ProN" :size 14)
                      nil
                      'append)
    (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo")))
  ))
