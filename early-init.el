;;; early-init.el ---  -*- lexical-binding: t; -*-

;;; Code:
(setq package-enable-at-startup nil)
(setenv "LSP_USE_PLISTS" "true")


;; speed up the startup
(setq gc-cons-percentage 0.6
      gc-cons-threshold most-positive-fixnum)

(setq inhibit-startup-message t
      initial-scratch-message nil
      inhibit-startup-screen t)

;; disable menu-bar, tool-bar, scroll-bar
(setq default-frame-alist
      '((menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (horizontal-scroll-bars)
        (vertical-scroll-bars)))

(provide 'early-init)

;; early-init.el ends here
