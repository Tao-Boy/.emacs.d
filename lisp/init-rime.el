;; -*- lexical-binding: t; -*-

(require 'rime)
(setq default-input-method "rime")
(setq rime-share-data-dir "~/.local/share/rime-ls")
(setq rime-disable-predicates
      '(rime-predicate-tex-math-or-command-p ;; 在 LaTeX 数学环境下切换
	rime-predicate-space-after-cc-p ;; 在中文字符且有空格之后
	rime-predicate-after-ascii-char-p ;; 在任意英文字符后
        rime-predicate-punctuation-line-begin-p)) ;; 在行首输入符号时

(provide 'init-rime)
