;; -*- lexical-binding: t; -*-

(use-package tex
  :ensure auctex
  :defer t
  :config 
  (setq-default TeX-master "../main"
		TeX-PDF-mode t
		TeX-engine 'xetex)
  (setq TeX-parse-self t
	TeX-auto-save t
	TeX-save-query nil))

(provide 'init-latex)
