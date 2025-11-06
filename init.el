;; -*- lexical-binding: t; -*-

;;;Code:

(let ((default-handlers file-name-handler-alist))
  (setq file-name-handler-alist nil)
  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq file-name-handler-alist
                    (delete-dups (append file-name-handler-alist default-handlers)))) 101))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(add-hook 'org-mode-hook (lambda ()
			   (setq org-highlight-latex-and-related '(native))
			   (add-to-list 'org-latex-packages-alist '("" "physics" t))
			   (add-to-list 'org-latex-packages-alist '("" "bm" t))			   
			   ))

(require 'init-package)
(require 'init-base)
(require 'init-ui)
(require 'init-latex)
(require 'init-org)
(require 'init-markdown)
(require 'init-complete)
(require 'init-rime)
(require 'init-snippet)
(require 'init-lsp)

(defun my-gc ()
  "Clean up gc"
  (setq gc-cons-threshold (* 128 1024 1024))
  (setq gc-cons-percentage 0.3)
  (garbage-collect))

(add-hook 'emacs-startup-hook #'my-gc)

(provide 'init)
;; init.el ends here
