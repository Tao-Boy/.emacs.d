;; -*- lexical-binding: t; -*-

(use-package org
  :config
  (setq org-highlight-latex-and-related '(latex native entities)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (latex . t)))

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

(use-package simple-httpd
  :straight '(simple-httpd :type git :host github :repo "skeeto/emacs-web-server"))

(use-package impatient-mode)

(use-package org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-latex-macros
	'(("\\mel" .  "\\left\\langle #1 \\middle| #2 \\middle| #3 \\right\\rangle")
	  ("\\braket" . "\\left\\langle #1 \\middle| #2 \\right\\rangle")
	  ("\\dif" .  "\\,\\mathrm{d}")
	  ("\\eval" . "\\left.#1 \\right|")
	  ("\\Tr" . "\\text{Tr}"))))

(provide 'init-org)
