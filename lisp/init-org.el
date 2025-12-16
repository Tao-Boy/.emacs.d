;; -*- lexical-binding: t; -*-

;; 定义一个适配 org-publish 的专用函数
(defun my-hugo-publish-to-md (plist filename pub-dir)
  "Org-publish 的包装函数，忽略多余参数，直接调用 ox-hugo 导出"
  (with-current-buffer (find-file-noselect filename)
    (org-hugo-export-to-md)))

(setq org-publish-project-alist
      '(("quartz"
	 :base-directory "~/org-roam/"
	 :publishing-directory "~/quartz-note"
	 :base-extension "org"
	 :recursive t
	 :publishing-function my-hugo-publish-to-md
	 )))

(use-package ox-hugo
  :config
  (setq org-hugo-base-dir "~/quartz-note"))
(use-package org
  :config
  (set-face-attribute 'org-block nil
		      :background nil)
  (setq org-format-latex-header
	(concat org-format-latex-header
		"
\\usepackage{amsmath,amssymb,mathrsfs}
\\usepackage{physics}
\\usepackage{bm}
\\usepackage{xcolor}
\\newcommand{\\dif}{\\mathrm{d}}
"))
  (setq org-highlight-latex-and-related '(latex native entities)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (latex . t)))

(use-package org-roam
  :straight (:host github :repo "org-roam/org-roam"
		   :files (:defaults "extensions/*")
		   :build (:not compile))
  :custom
  (org-roam-directory (expand-file-name "~/org-roam"))
  (org-roam-db-location "~/org-roam/org-roam.db")
  :config
  (org-roam-db-autosync-mode 1)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today)))

;; (use-package org-roam-ui
;;   :after org-roam
;;   :config
;;   (setq org-roam-ui-latex-macros
;; 	'(("\\mel" .  "\\left\\langle #1 \\middle| #2 \\middle| #3 \\right\\rangle")
;; 	  ("\\braket" . "\\left\\langle #1 \\middle| #2 \\right\\rangle")
;; 	  ("\\dif" .  "\\,\\mathrm{d}")
;; 	  ("\\eval" . "\\left.#1 \\right|")
;; 	  ("\\Tr" . "\\mathrm{Tr}"))))

(provide 'init-org)
