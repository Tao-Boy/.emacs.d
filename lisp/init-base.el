;;; -*- lexical-binding: t; -*-

(setq read-process-output-max (* 16 1024 1024))

(electric-pair-mode t)
(global-display-line-numbers-mode t)
;; Set UTF-8 as the default coding system
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-next-selection-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(setq jit-lock-defer-time 0)
(setq font-lock-multiline t)
(setq jit-lock-chunk-size 4000)
(setq mac-command-modifier 'meta)
;; dont't auto save and make backup file
(setq make-backup-files nil
      auto-save-default nil)

(setq word-wrap-by-category t)

(setq warning-minimum-level :error)


(provide 'init-base)
