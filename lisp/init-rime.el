;;; init-rime.el --- -*- lexical-binding: t; -*-

;; Code:

(defun typst-mathzone-p ()
  (interactive)
  (let ((node (treesit-node-at (point))))
    (if (treesit-parent-until
         node
         (lambda (n)
	   (and
            (equal (treesit-node-type n) "math")	                    (> (point) (treesit-node-start n))
            (< (point) (treesit-node-end n))
	    )))
	t
      nil)))

(defun not-typst-mathzone-p ()
 (interactive)
 (not (typst-mathzone-p)))

(use-package rime
  :custom
  (default-input-method "rime")
  :config
  (cond
   ((eq system-type 'gnu/linux)
    (setq rime-share-data-dir "~/.local/share/rime"))
   
   ((eq system-type 'darwin)
    (setq rime-librime-root "/opt/homebrew"
          rime-share-data-dir "~/.config/rime"))
   
   ((eq system-type 'windows-nt)
    (setq rime-librime-root "~/librime"
	  rime-share-data-dir (file-truename "~/rime-ice"))))
  
  (when (display-graphic-p)
    (setq rime-show-candidate 'posframe
          rime-posframe-style 'vertical))
  
  (setq rime-disable-predicates
	'(
	  texmathp
	  rime-predicate-space-after-cc-p
	  rime-predicate-after-ascii-char-p
	  rime-predicate-punctuation-line-begin-p)))

(provide 'init-rime)
;; init-rime.el ends here
