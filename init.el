;; -*- mode: Emacs-Lisp; -*-
;;
;;

;; modulized Emacs configuration
;; http://stackoverflow.com/a/2079146/1488781
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; load function chooses the newer file (.el vs .elc)
(setq load-prefer-newer t)

;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; ibuffer is a major improvement of the classic “Buffer menu” mode
(defalias 'list-buffers 'ibuffer)

;; GUI settings
(load-user-file "gui.el")

;; Text editor settings
(load-user-file "editor.el")

;; Paths
(load-user-file "paths.el")

;; Save-place mode
(load-user-file "save-place.el")

;; Desktop save mode
(load-user-file "desktop-save.el")

;; TRAMP settings
(load-user-file "tramp.el")

;; Packages
(load-user-file "pkgs.el")

;; Whitespaces
(load-user-file "whitespace.el")

;; columns indicator
(load-user-file "columns.el")

;; smart mode line
(load-user-file "smart-mode-line.el")

;; Color Scheme color-theme-solarized
(load-theme 'solarized-light t)

;; Deft mode for notes
(load-user-file "deft.el")

;; python
(load-user-file "python.el")

;; auto complete
(load-user-file "auto-complete.el")

;; magit
(load-user-file "magit.el")

;; various modes
(load-user-file "modes.el")

;; keyboard shortcuts
(load-user-file "keys.el")

