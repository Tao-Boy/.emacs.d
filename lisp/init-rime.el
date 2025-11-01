;;; init-rime.el --- -*- lexical-binding: t; -*-

;; Code:

(use-package rime
  :straight t
  :custom
  (default-input-method "rime")
  :config
  (setq rime-disable-predicates
	'(rime-predicate-tex-math-or-command-p
	  rime-predicate-space-after-cc-p
	  rime-predicate-after-ascii-char-p
	  rime-predicate-punctuation-line-begin-p))
  )

(provide 'init-rime)
;; init-rime.el ends here
