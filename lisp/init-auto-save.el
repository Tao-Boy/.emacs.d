;;;init-auto-save.el -*- lexical-binding: t; -*-

;; Code:

(use-package auto-save
  :straight (auto-save :type git :host github :repo "manateelazycat/auto-save")
  :config
  (setq auto-save-silent t
	auto-save-delete-trailing-whitespace t)
  :hook (LaTeX-mode . auto-save-enable))

(provide 'init-auto-save)
;; init-auto-save.el ends here
