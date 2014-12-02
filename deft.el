;; -*- mode: Emacs-Lisp; -*-
;;
;;

;; package: deft
(setq deft-extension "md")
(setq deft-directory "~/Documents/Notes")

(define-minor-mode deft-note-mode "Deft notes" nil " Deft-Notes" nil)
(setq deft-text-mode 'deft-note-mode)
(defun kill-all-deft-notes ()
  (interactive)
  (save-excursion
    (let((count 0))
      (dolist(buffer (buffer-list))
        (set-buffer buffer)
        (when (not (eq nil deft-note-mode))
          (setq count (1+ count))
          (kill-buffer buffer)))
      )))

(defun deft-or-close ()
  (interactive)
  (if (or (eq major-mode 'deft-mode) (not (eq nil deft-note-mode)))
      (progn (kill-all-deft-notes) (kill-buffer "*Deft*"))
    (deft)
    ))
(global-set-key [f4] 'deft-or-close)
