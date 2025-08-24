;;; -*- lexical-binding: t; -*-


(global-display-line-numbers-mode t)

(use-package ef-themes
  :ensure t
  :config
  (load-theme 'ef-melissa-light t))

(use-package doom-modeline
  :ensure t
  :hook
  (after-init . doom-modeline-mode))

(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook))

(provide 'init-ui)
