;;; init-corfu.el --- -*- lexical-binding: t; -*-

;; Code:

(use-package lsp-mode
  :hook ((typst-ts-mode) . lsp)
  :hook
  (lsp-completion-mode . (lambda ()
			   (setq-local completion-category-defaults nil)))
  :config
  (setq lsp-log-io nil
	lsp-lens-enable nil
	lsp-eldoc-enable-hover nil
	lsp-completion-provider :capf)
  (with-eval-after-load 'lsp-mode
    (lsp-register-client
     (make-lsp-client
      :new-connection (lsp-stdio-connection "tinymist")
      :major-modes '(typst-ts-mode typst-mode)
      :server-id 'tinymist
      :priority 1
      :initialization-options
      '(:exportPdf "never"
		   :formatterMode "typstyle")))))

(use-package lsp-pyright
  :custom (lsp-pyright-langserver-command "pyright") ;; or basedpyright
  :hook (python-ts-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(provide 'init-lsp)
