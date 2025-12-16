;; -*- lexical-binding: t; -*-

;; (use-package obsidian
;;   :commands (obsidian-capture)
;;   :hook (markdown-mode . (global-obsidian-mode obsidian-backlinks-mode))
;;   :bind (:map obsidian-mode-map
;; 	      ("C-c C-n" . obsidian-capture)
;; 	      ("C-c C-l" . obsidian-insert-link)
;; 	      ("C-c C-o" . obsidian-follow-link-at-point)
;; 	      ("C-c C-p" . obsidian-jump)
;; 	      ("C-c C-b" . obsidian-backlink-jump))
;;   :custom
;;   (obsidian-directory "~/obsidian")
;;    (markdown-enable-wiki-links t))

(provide 'init-obsidian)
