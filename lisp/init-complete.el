;;; init-complete.el -*- lexical-binding: t; -*-

;; Code:

(use-package nerd-icons-corfu
  :config
  (setq nerd-icons-corfu-mapping
	'((array :style "cod" :icon "symbol_array" :face font-lock-type-face)
          (boolean :style "cod" :icon "symbol_boolean" :face font-lock-builtin-face)
          (file :fn nerd-icons-icon-for-file :face font-lock-string-face)
          (t :style "cod" :icon "code" :face font-lock-warning-face)))
  )


(use-package corfu
  :config
  (setq corfu-auto t
	corfu-auto-delay 0
	corfu-auto-prefix 1
	corfu-quit-no-match 'separator
     	)
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)
  (define-key corfu-map (kbd "TAB") nil)
  (define-key corfu-map (kbd "<tab>") nil)
  (define-key corfu-map (kbd "RET") 'corfu-insert)
  :hook ((prog-mode org-mode typst-ts-mode) . corfu-mode))


(use-package vertico
  :straight t
  :custom
  (vertico--cycle t)
  :hook
  (after-init . vertico-mode))

(use-package marginalia
  :straight t
  :hook
  (after-init . marginalia-mode)
  )

(use-package orderless
  :straight t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(provide 'init-complete)
;; init-complete.el ends here

