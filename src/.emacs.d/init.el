;;;; TEST EMACS INIT FILE
;;;; Justin Carr
;;;; 6/27/2013

;;; Marmalade package manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;; If packages missing, download and install
(defvar my-packages '(starter-kit
                      starter-kit-ruby
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-eshell
                      clojure-mode
                      clojure-test-mode
                      rainbow-delimiters
                      nrepl
                      auto-complete ac-nrepl
                      evil
                      editorconfig
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (message "%s" "...done.")
    (package-install p)
    )
  )

;;; Line numbering mode
(setq linum-format "%2d |")
(global-linum-mode t)

;;; Clojure mode rainbow delimiters
;;(add-to-list 'load-path ~/.emacs.d/rainbow-delimiters.elc)
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;;; Whitespace highlighting
;(require 'highlight-chars)

;;; Evil mode
(require 'evil)
;(evil-mode t)

;;; paredit
;(add-hook 'clojure-mode-hook 'paredit-mode)
;(add-hook 'nrepl-mode-hook 'paredit-mode)
(global-set-key [f7] 'paredit-mode)

;;; nrepl
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(add-to-list 'same-window-buffer-names "*nrepl*")
(add-hook 'nrepl-mode-hook 'paredit-mode)
(global-set-key [f9] 'nrepl-jack-in)

;; Auto complete
; use M-/ to stop completion
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-completing-map "\M-/" 'ac-stop)

;; ac-nrepl
(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'nrepl-mode))
