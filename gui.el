;; -*- mode: Emacs-Lisp; -*-
;; GUI Settings
;;
;; GUI settings

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

;; Default window size 
;; http://ergoemacs.org/emacs/emacs_customize_default_window_size.html
(setq default-frame-alist
      '(
        (width . 84)  ; character
        (height . 43) ; lines
        ))

;; Set font for Mac OS X
;; http://ergoemacs.org/emacs/emacs_list_and_set_font.html
(when (member "Monaco" (font-family-list))
  (set-face-attribute 'default nil :font "Monaco-13"))
