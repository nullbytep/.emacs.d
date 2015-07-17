;; -------------------------------------
;; Base
;; -------------------------------------

(el-get-bundle init-loader)

;; -------------------------------------
;; Common Editing
;; -------------------------------------

(el-get-bundle popwin)
(el-get-bundle yasnippet)
(el-get-bundle yasnippet-snippets)
(el-get-bundle helm)
(el-get-bundle htmlize)

;; -------------------------------------
;; Themes
;; -------------------------------------

(el-get-bundle cyberpunk-theme)
(el-get-bundle color-theme-zenburn)

;; -------------------------------------
;; Development
;; -------------------------------------

;; Common
;; (el-get-bundle flycheck)
(el-get-bundle magit)

;; Python
(el-get-bundle python-mode)
(el-get-bundle jedi)
(el-get-bundle ein)   ;; Emacs iPython Notebook

;; others
(el-get-bundle julia-mode)
(el-get-bundle web-mode)

(el-get-bundle scala-mode2)
(el-get-bundle ensime)
