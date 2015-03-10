;;; save-hist-mode.el ---                            -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(setq savehist-file "~/.emacs.d/tmp/savehist"
      savehist-additional-variables '(kill-ring search-ring regexp-search-ring extended-command-history ring grep-history)
      savehist-autosave-interval 60)
(setq-default history-length 1000)
(savehist-mode 1)

;;; save-hist-mode.el ends here
