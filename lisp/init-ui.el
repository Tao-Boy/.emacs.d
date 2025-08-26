;;; -*- lexical-binding: t; -*-


(global-display-line-numbers-mode t)

(use-package ef-themes
  :ensure t
  :init
  (load-theme 'ef-maris-dark t))

(use-package doom-modeline
  :ensure t
  :hook
  (after-init . doom-modeline-mode))

(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook))

(use-package vertico
  :ensure t
  :defer t
  :custom
  (verticle-cycle t)
  :hook
  (after-init . vertico-mode))

(use-package marginalia
  :ensure t
  :hook
  (after-init . marginalia-mode))

(use-package orderless
  :ensure t
  :defer t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(provide 'init-ui)
