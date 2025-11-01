;;; init-latex.el -*- lexical-binding: t; -*-

;; Code:
(use-package auctex
  :straight t 
  :config
  (setq-default TeX-engine 'xetex)
  (setq TeX-auto-save nil
	TeX-pdf-mode t
	TeX-master 'shared
	TeX-save-query nil
	TeX-parse-self t))

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (add-hook 'after-save-hook
                      (lambda ()
                        (TeX-command-run-all nil))
                      nil t)))

(provide 'init-latex)
;; init-latex.el ends here
