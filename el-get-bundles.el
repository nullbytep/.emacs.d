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
(el-get-bundle windows)


;; -------------------------------------
;; Themes
;; -------------------------------------

(el-get-bundle cyberpunk-theme)
(el-get-bundle color-theme-zenburn)

;; -------------------------------------
;; Development
;; -------------------------------------

;; Common
(el-get-bundle flycheck)
(el-get-bundle magit)

;; Python
(el-get-bundle python-mode)
(el-get-bundle jedi)
(el-get-bundle ein)   ;; Emacs iPython Notebook
(el-get-bundle rst-mode)

;; others
(el-get-bundle julia-mode)
(el-get-bundle web-mode)
(el-get-bundle rjsx-mode)

(el-get-bundle scala-mode2)
(el-get-bundle ensime)

(el-get-bundle yaml-mode)

(el-get-bundle company-mode)
(el-get-bundle company-jedi)

;; ------------------------------------
;; UI
;; ------------------------------------

(el-get-bundle neotree)
(el-get-bundle all-the-icons)  ;; required by neotree
(el-get-bundle minimap)
(el-get-bundle rainbow-delimiters)
(el-get-bundle beacon)

;; ------------------------------------
;; Other
;; ------------------------------------
(el-get-bundle projectile)
(el-get-bundle helm-projectile)
