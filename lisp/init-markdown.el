;; -*- lexical-binding: t; -*-

(use-package markdown-mode
  :init
  (setq markdown-enable-math t))

(use-package markdown-preview-mode
  :custom
  (markdown-command "multimarkdown")
  (markdown-preview-delay-time 0.3)
  (markdown-preview-script-onupdate "MathJax.typeset()")
  :config
  (add-to-list 'markdown-preview-javascript "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js")
  )

(provide 'init-markdown)
