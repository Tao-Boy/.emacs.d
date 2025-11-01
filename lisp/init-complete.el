;;; init-complete.el -*- lexical-binding: t; -*-

;; Code:

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

