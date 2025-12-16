;; -*- lexical-binding: t; -*-

;;;Code:

(let ((default-handlers file-name-handler-alist))
  (setq file-name-handler-alist nil)
  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq file-name-handler-alist
                    (delete-dups (append file-name-handler-alist default-handlers)))) 101))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(if (eq system-type 'darwin)
    (add-to-list 'exec-path "/Library/TeX/texbin/"))

(setq custom-file "~/.emacs.d/custom.el")
(with-eval-after-load 'init
  (load custom-file))

(require 'init-package)
(require 'init-base)
(require 'init-ui)
(require 'init-latex)
(require 'init-org)
;;(require 'init-markdown)
;;(require 'init-obsidian)
(require 'init-complete)
(require 'init-rime)
(require 'init-snippet)
(require 'init-lsp)
(require 'init-treesitter)
(require 'init-typst)
(require 'init-gpt)

(defun my-gc ()
  "Clean up gc"
  (setq gc-cons-threshold (* 128 1024 1024))
  (setq gc-cons-percentage 0.3)
  (garbage-collect))

(add-hook 'emacs-startup-hook #'my-gc)

(provide 'init)
;; init.el ends here
