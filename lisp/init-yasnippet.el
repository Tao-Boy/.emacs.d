;;; -*- lexical-binding: t; -*-


(use-package yasnippet
  :ensure t
  :hook
  (LaTeX-mode . yas-global-mode)
  (post-self-insert-hook . my/yas-try-expanding-auto-snippets)
  :config
  (defun my/yas-try-expanding-auto-snippets ()
    (when (bound-and-true-p yas-minor-mode)
      (let ((yas-buffer-local-condition ''(require-snippet-condition . auto)))
	(yas-expand))))
  (add-to-list 'load-path "~/.emacs.d/snippets")
  (setq yas-triggers-in-field t))

(with-eval-after-load 'warnings
  (add-to-list 'warning-suppress-types '(yasnippet backquote-change)))

(provide 'init-yasnippet)
