;; Default js indentation levels
(setq-default js2-basic-offset 2)
(setq js-indent-level 2)

;; Disallow scrolling with mouse wheel
(when window-system
  (mouse-wheel-mode -1))

;; Monday ftw
(set-variable 'calendar-week-start-day 1)

;; Font size
(define-key global-map (kbd "M-s +") 'zoom-in)
(define-key global-map (kbd "M-s -") 'zoom-out)

;; No more scrolling surprises
(global-unset-key (kbd "C-v"))
(global-unset-key (kbd "M-v"))

;; No graphics please o.O
(setq speedbar-use-images nil)

;; PHP
(autoload 'php-mode "php-mode")
(setq php-file-patterns nil)
(add-to-list 'auto-mode-alist '("[^.][^t][^p][^l]\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php$" . html-mode))
(eval-after-load "php-mode"
  '(define-key php-mode-map (kbd "C-.") nil))

;; Use GNU ls - install with:
;;    brew install xz coreutils
(setq insert-directory-program "gls")
