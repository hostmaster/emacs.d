
;; package: rainbow-delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; package: nginx-mode
(add-to-list 'auto-mode-alist '("nginx\\.conf" . nginx-mode))
(add-to-list 'auto-mode-alist '("etc/nginx/"   . nginx-mode))

;; package: ssh-config-mode
(add-to-list 'auto-mode-alist '(".ssh/config\\'"  . ssh-config-mode))
(add-to-list 'auto-mode-alist '(".ssh/config\\'"  . ssh-config-mode))
(add-to-list 'auto-mode-alist '("sshd?_config\\'" . ssh-config-mode))

;; package: jinja-mode
(add-to-list 'auto-mode-alist '("\\.j2$" . jinja2-mode))

;; package: makrkdown-mode
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; package: color-identifiers-mode
(add-hook 'after-init-hook 'global-color-identifiers-mode)


;; flymake
(add-hook 'find-file-hook 'flymake-find-file-hook)

