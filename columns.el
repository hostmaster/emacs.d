;;

(setq-default fci-rule-use-dashes t)
(setq-default fill-column 80)

(add-hook 'text-mode-hook 'turn-on-fci-mode)
(add-hook 'prog-mode-hook 'turn-on-fci-mode)
