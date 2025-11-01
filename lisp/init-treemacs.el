;;;init-treemacs.el -*- lexical-binding: t; -*-

;; Code:

(use-package treemacs
  :straight t
  :bind (("C-x t t" . treemacs))
  :config
  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t))


(provide 'init-treemacs)
;; init-treemacs.el ends here
