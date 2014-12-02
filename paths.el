;; -*- mode: Emacs-Lisp; -*-
;;
;;



(unless (file-exists-p "~/.emacs.d/tmp")
        (make-directory "~/.emacs.d/tmp"))

(setq exec-path (append exec-path '("/usr/local/bin")))

(setenv "PATH"
	(concat
	 "/usr/local/bin" ":"
	 "/usr/local/sbin" ":"
	 (getenv "PATH") ; inherited from OS
	 ))

;; for tramp ssh
(setenv "TMPDIR" "/tmp")

;; http://stackoverflow.com/a/4345711
;; 
(setq locate-command "mdfind")
