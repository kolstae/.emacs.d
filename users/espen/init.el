;; Disallow scrolling with mouse wheel
(mouse-wheel-mode nil)

;; Load paredit in clojure mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Midje disable ANSI-colors
(setenv "MIDJE_COLORIZE" "false")
