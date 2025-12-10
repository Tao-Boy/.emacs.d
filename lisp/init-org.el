;; -*- lexical-binding: t; -*-


;; 定义一个适配 org-publish 的专用函数
(defun my-hugo-publish-to-md (plist filename pub-dir)
  "Org-publish 的包装函数，忽略多余参数，直接调用 ox-hugo 导出"
  (with-current-buffer (find-file-noselect filename)
    (org-hugo-export-to-md)))

(setq org-publish-project-alist
      '(("quartz"
	 :base-directory "~/org-roam/"
	 :publishing-directory "~/Blog/quartz/"
	 :base-extension "org"
	 :recursive t
	 :publishing-function my-hugo-publish-to-md
	 )))

(use-package ox-hugo)
(use-package org
  :config
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
  (org-roam-capture-templates
   '(("d" "default" plain "%?"
      :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                         ":PROPERTIES:
:ID:       %(org-id-new)
:END:
#+title: ${title}
#+SETUPFILE: ./latex-macros.setup
")
      :unnarrowed t)))
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

;; (use-package maple-preview
;;   :straight '(maple-preview :type git :host github :repo "honmaple/emacs-maple-preview" :files ("*.el" "index.html" "static"))
;;   :commands (maple-preview-mode)
;;   :config
;;   (setq maple-preview:text-content '((t . maple-preview:markdown-content)))
;;   (setq maple-preview:browser-open nil
;; 	maple-preview:delay 0.1
;; 	maple-preview:auto-update t
;; 	maple-preview:port 8080))
  
(provide 'init-org)
