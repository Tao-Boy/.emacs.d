;; -*- lexical-binding: t; -*-

(use-package typst-ts-mode)

(use-package typst-preview
  :straight '(typst-preview :type git :host github :repo "havarddj/typst-preview.el")
  :init
  (setq typst-preview-open-browser-automatically nil)
  (setq typst-preview-host "127.0.0.1:8080"))


(provide 'init-typst)
