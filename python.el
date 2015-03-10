;;; python.el --- python stuff
;;; Commentary:
;;; Code:
;;(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; use "flake8" instead of "pyflakes"
;;(setq flymake-python-pyflakes-executable "flake8")

;(add-hook 'python-mode-hook 'auto-complete-mode)
;(add-hook 'python-mode-hook 'jedi:ac-setup)

(eval-after-load 'autoinsert
  '(define-auto-insert '(python-mode . "Python skeleton")
     '("Description: "
       "#!/usr/bin/env python" \n
       \n
       "if __name__ == \"__main__\":"\n
       _
       \n
       )))

;;; python.el ends here
