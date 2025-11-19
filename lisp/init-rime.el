;;; init-rime.el --- -*- lexical-binding: t; -*-

;; Code:

(use-package rime
  :straight t
  :custom
  (default-input-method "rime")  
  :config
  (if (eq system-type 'darwin)
      (setq rime-librime-root "/opt/homebrew"
	    rime-share-data-dir "~/.config/rime"))
  (setq rime-disable-predicates
	'(texmathp
	  rime-predicate-space-after-cc-p
	  rime-predicate-after-ascii-char-p
	  rime-predicate-punctuation-line-begin-p))
  )

(provide 'init-rime)
;; init-rime.el ends here
