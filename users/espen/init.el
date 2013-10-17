(set-default-font "Source Code Pro")

;; Disallow scrolling with mouse wheel
(mouse-wheel-mode nil)

;; Disable scroll-bar
(scroll-bar-mode -1)

;; Load paredit in clojure mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Font size
(define-key global-map (kbd "M-s +") 'zoom-in)
(define-key global-map (kbd "M-s -") 'zoom-out)

;; Experimental rebind of C-b and C-f
(fset 'quick-switch-buffer [?\C-x ?b return])
(global-set-key (kbd "C-b") 'quick-switch-buffer) ;; toggle two most recent buffers
(global-set-key (kbd "C-f") 'duplicate-current-line-or-region) ;; duplicate line
