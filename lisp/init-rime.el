;;; init-rime.el --- -*- lexical-binding: t; -*-

;; Code:

(defun typst-mathzone-p ()
  "检测当前是否在 Typst 数学环境内"
  (interactive)
  (let ((node (treesit-node-at (point))))
    (if (treesit-parent-until
         node
         (lambda (n)
           (member (treesit-node-type n) '("math"))))
        t
      nil)))

(defun not-typst-mathzone-p ()
  (interactive)
  (not (typst-mathzone-p)))

(use-package rime
  :straight t
  :custom
  (default-input-method "rime")
  :config
  (if (eq system-type 'darwin)
      (setq rime-librime-root "/opt/homebrew"
	    rime-share-data-dir "~/.config/rime"))
  (setq rime-disable-predicates
	'(
	  typst-mathzone-p
	  rime-predicate-space-after-cc-p
	  rime-predicate-after-ascii-char-p
	  rime-predicate-punctuation-line-begin-p)))

(provide 'init-rime)
;; init-rime.el ends here
