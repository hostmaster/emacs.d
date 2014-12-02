;; -*- mode: Emacs-Lisp; -*-
;;
;;

;; package: whitespace-cleanup-mode
(defun whitespace-cleanup* ()
  (let* ((modified-before-p (buffer-modified-p)))
    (whitespace-cleanup)
    (if (not modified-before-p)
        (not-modified))))

(defun whitespace-cleanup-on-save ()
  (add-hook 'write-contents-hooks #'whitespace-cleanup*))

(add-hook 'emacs-lisp-mode-hook #'whitespace-cleanup-on-save)
(add-hook 'python-mode-hook     #'whitespace-cleanup-on-save)
(add-hook 'yaml-mode-hook       #'whitespace-cleanup-on-save)
(add-hook 'jinja2-mode-hook     #'whitespace-cleanup-on-save)
