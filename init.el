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
(require 'init-markdown)
(require 'init-obsidian)
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b7a09eb77a1e9b98cafba8ef1bd58871f91958538f6671b22976ea38c2580755"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
