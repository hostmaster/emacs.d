(unless (file-exists-p "~/.emacs.d/ac-dict")
        (make-directory "~/.emacs.d/ac-dict"))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(add-to-list 'ac-modes '(python-mode))
(add-to-list 'ac-modes '(sh-mode))
(ac-config-default)

;; Known bug. Auto completion will not be started in a buffer
;; flyspell-mode enabled
;;(ac-flyspell-workaround)

;(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
