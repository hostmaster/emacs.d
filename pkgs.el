;; -*- mode: Emacs-Lisp; -*-
;;
;;

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(add-to-list 'package-archives
;             '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(package-initialize)

;; Paradox
(setq paradox-execute-asynchronously t)
