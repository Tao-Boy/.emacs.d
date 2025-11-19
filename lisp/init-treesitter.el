;; -*- lexical-binding: t; -*-

(use-package treesit
  :straight nil
  :config (setq treesit-font-lock-level 4)
  :init
  (setq treesit-language-source-alist
    '((elisp      . ("https://gh-proxy.com/github.com/Wilfred/tree-sitter-elisp"))
      (rust       . ("https://gh-proxy.com/github.com/tree-sitter/tree-sitter-rust"))
      (typst      . ("https://gh-proxy.com/github.com/uben0/tree-sitter-typst"))
      (toml       . ("https://gh-proxy.com/github.com/tree-sitter/tree-sitter-toml"))))
  (add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode)))

(provide 'init-treesitter)
