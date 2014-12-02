(setq whitespace-line-column 80
      whitespace-style '(tabs trailing lines-tail))

;; fill-column-indicator
(setq fci-rule-use-dashes 1)
(setq-default fill-column 79)
(define-globalized-minor-mode
  global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
