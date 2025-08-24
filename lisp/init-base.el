;;; -*- lexical-binding: t; -*-

(setq use-file-dialog nil
      use-dialog-box nil
      inhibit-x-resources t
      inhibit-default-init t
      inhibit-startup-screen t
      inhibit-startup-message t
      inhibit-startup-buffer-menu t)

(setq window-resize-pixelwise t
      frame-resize-pixelwise t)

(setq x-gtk-use-system-tooltips nil
      x-gtk-use-native-input t
      x-underline-at-descent-line t)

(setq make-backup-files nil
      auto-save-default nil)

(setq create-lockfiles nil)

(setq inhibit-compacting-font-caches t)

(setq display-raw-bytes-as-hex t
      redisplay-skip-fontification-on-input t)

(setq ring-bell-function 'ignore)

(setq blink-cursor-mode nil)

(setq scroll-step 2
      scroll-margin 2
      hscroll-step 2
      hscroll-margin 2
      scroll-conservatively 101
      scroll-preserve-screen-position 'always)

(setq auto-window-vscroll nil)

(setq mouse-yank-at-point t)

(electric-pair-mode t)

(provide 'init-base)
