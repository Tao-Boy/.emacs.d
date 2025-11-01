;; -*- lexical-binding: t; -*-

(use-package recentf
  :demand t
  :custom
  (recentf-max-menu-items 25)
  (recentf-max-saved-items 25)
  :bind ("C-x C-r" . 'recentf-open-files)
  :config
  (recentf-mode))

(use-package saveplace
  :straight t
  :config
  (save-place-mode))

(provide 'init-recentf)
