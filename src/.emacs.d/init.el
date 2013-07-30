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

