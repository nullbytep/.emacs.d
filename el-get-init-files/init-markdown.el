(require 'markdown-mode)
(setq markdown-command "/usr/local/bin/pandoc --quiet -f gfm -s --self-contained -t html5")
(setq markdown-use-pandoc-style-yaml-metadata t)
