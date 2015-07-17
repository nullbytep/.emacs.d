(require 'popwin)
(popwin-mode 1)

(push '("*grep*" :noselect t) popwin:special-display-config)
(push '("*Warnings*" :noselect t) popwin:special-display-config)
(push '("*Backtrace*" :noselect t) popwin:special-display-config)
(push '("*Messages*" :noselect t) popwin:special-display-config)
