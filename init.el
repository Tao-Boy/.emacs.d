;;; init.el --- Load the configuration -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-package)
(require 'init-base)
(require 'init-ui)
(require 'init-latex)
(require 'init-rime)
(require 'init-yasnippet)
