;; -*- lexical-binding: t; -*-

(setq org-highlight-latex-and-related '(native latex entities))

(use-package  org-fragtog
  :straight t
  :hook (org-mode . org-fragtog-mode))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode)
  :straight t)

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (expand-file-name "~/org-note"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-db-autosync-mode)
  )



(provide 'init-org)
