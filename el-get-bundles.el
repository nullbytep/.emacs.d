(el-get-bundle init-loader)

(el-get-bundle htmlize)
(el-get-bundle magit)
(el-get-bundle popwin)
(el-get-bundle web-mode)
(el-get-bundle yasnippet)
(el-get-bundle yasnippet-snippets)
(el-get-bundle helm)

(el-get-bundle julia-mode)

;; cyberpunk theme (MELPA)
(el-get-bundle cyberpunk-theme)
(el-get-bundle color-theme-zenburn)

;; Emacs iPython Notebook
(el-get-bundle ein
  :type github
  :pkgname "millejoh/emacs-ipython-notebook"
  :features ein
  :depends (websocket request auto-complete))

