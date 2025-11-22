;; -*- lexical-binding: t; -*-

;;;Code:

(let ((default-handlers file-name-handler-alist))
  (setq file-name-handler-alist nil)
  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq file-name-handler-alist
                    (delete-dups (append file-name-handler-alist default-handlers)))) 101))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'init-package)
(require 'init-base)
(require 'init-ui)
(require 'init-latex)
(require 'init-org)
(require 'init-complete)
(require 'init-rime)
(require 'init-snippet)
(require 'init-lsp)
(require 'init-treesitter)
(require 'init-typst)

(defun my-gc ()
  "Clean up gc"
  (setq gc-cons-threshold (* 128 1024 1024))
  (setq gc-cons-percentage 0.3)
  (garbage-collect))

(add-hook 'emacs-startup-hook #'my-gc)


(provide 'init)
;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
