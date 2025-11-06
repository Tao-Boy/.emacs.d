;; -*- lexical-binding: t; -*-

(use-package org
  :config
  (setq org-highlight-latex-and-related '(latex native entities)))

 
(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (expand-file-name "~/org-roam"))
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
