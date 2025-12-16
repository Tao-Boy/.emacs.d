;; -*- lexical-binding: t; -*-

(use-package typst-ts-mode
  :config
  (set-face-attribute 'font-lock-variable-use-face nil
		      :foreground "#C678DD")
  (set-face-attribute 'font-lock-constant-face nil
		      :foreground "#98BE65")
  (set-face-attribute 'typst-ts-script-char-face nil
		      :foreground "orange")
  (set-face-attribute 'typst-ts-math-indicator-face nil
		      :foreground "#5B6268"
		      :inherit nil)
  (add-hook 'typst-ts-mode-hook 
            (lambda ()
              (modify-syntax-entry ?$ "$")))
  (setq typst-ts-indent-offset 2))

(use-package typst-preview
  :straight '(typst-preview :type git :host github :repo "havarddj/typst-preview.el")
  :init
  (setq typst-preview-open-browser-automatically nil
	typst-preview-host "127.0.0.1:8080"
	typst-preview-default-dir (locate-dominating-file "." ".git")
	typst-preview-partial-rendering t
	typst-preview-invert-colors "never"))
  


(provide 'init-typst)
