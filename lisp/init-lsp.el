;;; init-corfu.el --- -*- lexical-binding: t; -*-

;; Code:
(require 'lsp-bridge)
(setq lsp-bridge-tex-lsp-server "texlab")
(setq lsp-bridge-python-lsp-server "pyright")

(setq acm-frame-background-dark-color "#B3CF17")
(global-lsp-bridge-mode)

;; init-corfu.el ends here
(provide 'init-lsp)
