;;;; TEST EMACS INIT FILE
;;;; Justin Carr
;;;; 6/27/2013

;;; Marmalade package manager
;;(require 'package)
;;(add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(package-initialize)

;;; If packages missing, download and install
;;(defvar my-packages
;;  '(clojure-mode
;;    rainbow-delimiters
;;    minimap
;;    paredit
;;    ))

;;(dolist (p my-packages)
;;  (when (not (package-installed-p p))
;;    (message "%s" "Refreshing package database...")
;;    (package-refresh-contents)
;;    (message "%s" "...done.")
;;    (package-install p)
;;    )
;;  )

;;; Line numbering mode
(setq linum-format "%2d |")
(global-linum-mode t)

;;; Clojure mode rainbow delimiters
;;(require 'rainbow-delimiters)
;;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;;; paredit
;;(add-hook 'clojure-mode-hook 'paredit-mode)
;;(add-hook 'nrepl-mode-hook 'paredit-mode)
;;(global-set-key [f7] 'paredit-mode)

;;; Minimap
;;(require 'minimap)
