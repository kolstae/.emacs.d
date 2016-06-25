(defmacro project-specifics (name &rest body)
  `(progn
     (add-hook 'find-file-hook
             (lambda ()
               (when (string-match-p ,name (buffer-file-name))
                 ,@body)))
     (add-hook 'dired-after-readin-hook
             (lambda ()
               (when (string-match-p ,name (dired-current-directory))
                 ,@body)))))

;; FINN Oppdrag

(defun custom-persp/oppdrag ()
  (interactive)
  (custom-persp "oppdrag"
                (find-file "~/projects/oppdrag/todo.org")))

(define-key persp-mode-map (kbd "C-x p o") 'custom-persp/oppdrag)

(require 'oppdrag-mode)

(project-specifics "projects/oppdrag"
                   (set (make-local-variable 'slime-js-target-url) "http://local.finn.no:8080/")
                   (set (make-local-variable 'slime-js-connect-url) "http://local.finn.no:8009")
                   (set (make-local-variable 'slime-js-starting-url) "/oppdrag/")
                   (ffip-local-patterns "*.js" "*.jsp" "*.css" "*.org" "*.vm" "*jsTestDriver.conf" "*jawr.properties")
                   (oppdrag-mode))

;; Emacs

(defun custom-persp/emacs ()
  (interactive)
  (custom-persp "emacs"
                (find-file "~/.emacs.d/init.el")))

(project-specifics ".emacs.d"
  (ffip-local-excludes "swank")
  (ffip-local-patterns "*.el" "*.md" "*.org"))

(define-key persp-mode-map (kbd "C-x p e") 'custom-persp/emacs)

;; BvD-import

(defun custom-persp/bvd-import ()
  (interactive)
  (custom-persp "bvd-import"
                (find-file "~/projects/trank/bvd-import/project.clj")))

(project-specifics "projects/trank/bvd-import"
  (ffip-local-patterns "*.clj" "*.md" "*.sql" "*.sh"))

(define-key persp-mode-map (kbd "C-x p b") 'custom-persp/bvd-import)

;; Kraken

(defun custom-persp/kraken ()
  (interactive)
  (custom-persp "kraken"
                (find-file "~/projects/trank/kraken/project.clj")))

(project-specifics "projects/trank/kraken"
  (ffip-local-patterns "*.clj" "*.md" "*.sql" "*.sh"))

(define-key persp-mode-map (kbd "C-x p k") 'custom-persp/kraken)

;; T-Rank

(defun custom-persp/trank ()
  (interactive)
  (custom-persp "trank"
                (find-file "~/projects/netrank-clj/project.clj")))

(project-specifics "projects/netrank-clj"
  (ffip-local-excludes "out" "target")
  (ffip-local-patterns "*.clj" "*.cljs" "*.md" "*.js"))

(define-key persp-mode-map (kbd "C-x p t") 'custom-persp/trank)

;; FINN ops-utils

(defun custom-persp/ops-utils ()
  (interactive)
  (custom-persp "ops-utils"
                (find-file "~/projects/ops-utils/puppet/hieradata/common.yaml")))

(project-specifics "projects/ops-utils"
  (ffip-local-excludes "out" "target")
  (ffip-local-patterns "*.pp" "*.erb" "*.yaml" "*.rb"))

(define-key persp-mode-map (kbd "C-x p o") 'custom-persp/ops-utils)

;; FINN puppetroot

(defun custom-persp/puppetroot ()
  (interactive)
  (custom-persp "puppetroot"
                (find-file "~/projects/puppetroot/README.md")))

(project-specifics "projects/puppetroot"
  (ffip-local-excludes "out" "target")
  (ffip-local-patterns "*.pp" "*.erb" "*.yaml" "*.rb"))

(define-key persp-mode-map (kbd "C-x p r") 'custom-persp/puppetroot)
