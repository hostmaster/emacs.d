;; -*- mode: Emacs-Lisp; -*-
;; TRAMP mode settings
;;

(require 'tramp)
;(autoload 'tramp "tramp" "Remotely access files." t)
(setq tramp-default-method "ssh")
(setq password-cache-expiry nil)
(unless (file-exists-p "~/.emacs.d/tmp/tramp")
        (make-directory "~/.emacs.d/tmp/tramp"))
(setq tramp-persistency-file-name "~/.emacs.d/tmp/tramp")
(setq tramp-auto-save-directory   "~/.emacs.d/tmp/tramp")
;(setq tramp-verbose 10)
;(setq tramp-debug-buffer t)

(tramp-set-completion-function "ssh"
                               '((tramp-parse-sconfig "~/.ssh/config")
                                 ))
