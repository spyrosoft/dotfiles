;; Add third party packages to the load-path
(add-to-list 'load-path "~/.emacs.d/extra/")
;; Highlight nested delimiters rainbow colors
;(require 'rainbow-delimiters)
;(global-rainbow-delimiters-mode)

;; Repeat last insert command package
;; http://www.emacswiki.org/emacs/dot-mode.el
(require 'dot-mode)
(add-hook 'find-file-hooks 'dot-mode-on)

;; Lisp REPL
;; https://github.com/slime/slime
(add-to-list 'load-path "~/.emacs.d/extra/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; ESS mode for R
;; https://github.com/emacs-ess/ESS
(add-to-list 'load-path "~/.emacs.d/extra/ESS/lisp")
(autoload 'R-mode "ess-site.el" "ESS" t)
(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(setq inferior-R-program-name "/usr/bin/R")
;; Note: I use underscores in my variable names, so it was important to
;; remap the underscore ess-smart-S-assign-key to dash. Open this file:
;; ~/.emacs.d/path/to/ESS/lisp/ess-custom.el and change:
;; (defcustom ess-smart-S-assign-key "_"
;; to:
;; (defcustom ess-smart-S-assign-key "-"

;; Go mode
;; https://github.com/dominikh/go-mode.el
(add-to-list 'load-path "~/.emacs.d/extra/go-mode.el")
(require 'go-mode-autoloads)

;; Git
;; https://github.com/magnars/dash.el.git
(add-to-list 'load-path "~/.emacs.d/extra/dash.el")
;; https://github.com/magit/magit/releases
(add-to-list 'load-path "~/.emacs.d/extra/magit")
(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "~/.emacs.d/extra/magit/")))
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")

;; Lisp Mode
;; Use spaces rather than tabs
(add-hook 'lisp-mode-hook (lambda () (set-variable 'indent-tabs-mode nil)))


;; ----------Built In----------

;; For note taking/list building, such as to-do lists
(require 'org)

;; Save Place remembers where point was when the file was last closed
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/save-place-log")

;; ----------End Built In----------