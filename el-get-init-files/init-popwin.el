(require 'popwin)
(popwin-mode 1)

(push '("*grep*" :noselect t) popwin:special-display-config)
(push '("*Warning*" :noselect t) popwin:special-display-config)
(push '("*Backtrace*" :noselect t) popwin:special-display-config)
(push '("*Messages*" :noselect t) popwin:special-display-config)
