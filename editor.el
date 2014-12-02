;; -*- mode: Emacs-Lisp; -*-
;; Text editor settings
;;

;; Tabs are NOT used for indentation
(setq-default indent-tabs-mode nil)

(setq tab-width 4)

;; probably cc-model would be a better place for those settings
(defvaralias 'c-basic-offset 'tab-width)
(setq-default c-default-style "linux")

;; always show line numbers
(global-linum-mode 1)
(column-number-mode t)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; use ‘C-v’, ‘C-c’, and ‘C-x’ to paste, copy, and cut the region.
(cua-mode 1)


(delete-selection-mode t)
;; Handle .gz files
; (auto-compression-mode t)

;; Provide templates for new files
(auto-insert-mode t)

;; turn on automatic bracket insertion by pairs
(electric-pair-mode 1)

;; highlight current line
(global-hl-line-mode 1)

;; to make sure I'm looking at the most recent version of the file.
(global-auto-revert-mode 1)

;; incremental MiniBuffer completion preview
(icomplete-mode 99)

;; a list of recently opened files
;; http://www.emacswiki.org/RecentFiles
(recentf-mode 1)
(setq recentf-max-saved-items 500)
(setq recentf-max-menu-items 60)
(setq recentf-save-file (expand-file-name "recentf" "~/.emacs.d/tmp"))

;; the maximum length for all history lists that don't specify their own maximum lengths.
(setq history-length 250)

;; autosave
(setq auto-save-directory "~/.emacs.d/tmp/")
(setq auto-save-list-file-prefix "~/.emacs.d/tmp/auto-saves-")

;; Write backup files to own directory
(unless (file-exists-p "~/.emacs.d/tmp/backups")
  (make-directory "~/.emacs.d/tmp/backups"))
(setq backup-directory-alist '(("" . "~/.emacs.d/tmp/backups")))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
