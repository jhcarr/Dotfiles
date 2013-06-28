;;;; TEST EMACS INIT FILE
;;;; Justin Carr
;;;; 6/27/2013

;;; Marmalade package manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;; If packages missing, download and install
(when (not package-archive-contents)
  package-refresh-contents)

(defvar my-packages '(starter-kit starter-kit-lisp)
  "A list of packages to be compiled at runtime.")

(dolist (p my-packages)
  (when (not (package-installed-p p)))(package-install p)
)

;;; Line numbering mode
(setq linum-format "%2d |")
(setq global-linum-mode t)
