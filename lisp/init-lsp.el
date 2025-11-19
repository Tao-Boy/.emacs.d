;;; init-corfu.el --- -*- lexical-binding: t; -*-

;; Code:

(use-package eglot
  :config
  (with-eval-after-load 'typst-ts-mode
    (add-to-list 'eglot-server-programs
		 '((typst-ts-mode) . ("tinymist")))
    (setq-default eglot-workspace-configuration
		  '(:tinymist (:exportPdf "onSave")))
    ))

;; init-lsp.el ends here
(provide 'init-lsp)
