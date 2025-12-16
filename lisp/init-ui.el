;;; init-ui.el ---  -*- lexical-binding: t; -*-

;; Code:

(setq emoji-font (cond
                     ((eq system-type 'darwin) "Apple Color Emoji")
                     ((eq system-type 'windows-nt) "Segoe UI Emoji")
                     (t "Noto Color Emoji")))

(set-face-attribute 'default nil
 		    :family "Sarasa Term SC"
 		    :height 180)

(set-fontset-font t 'emoji
		  (font-spec :family emoji-font
			     :size 18.0))

(set-fontset-font t 'chinese-gbk
                  (font-spec :family "LXGW WenKai Mono"
                             :size 18.0))

(setq idle-update-delay 1.0)
(setq fast-but-imprecise-scrolling t)
(setq redisplay-skip-fontification-on-input t)
(setq visible-cursor nil)

(setq frame-inhibit-implied-resize t
      frame-resize-pixelwise t)

(setq hscroll-step 1
      hscroll-margin 2
      scroll-step 1
      scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position t
      auto-window-vscroll nil
      ;; mouse
      mouse-wheel-scroll-amount-horizontal 1
      mouse-wheel-progressive-speed nil)

(global-visual-line-mode t)

(use-package nerd-icons
  :straight t
  :custom
  (nerd-icons-font-family "Symbols Nerd Font Mono"))


(use-package doom-themes
  :straight t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :init
  (load-theme 'doom-one t)
  )

(use-package doom-modeline
  :straight t
  :hook (after-init . doom-modeline-mode)
  )

(use-package dashboard
  :straight t
  :hook (after-init . dashboard-setup-startup-hook)
  :custom
  (dashboard-display-icons-p t)
  (dashboard-icon-type 'nerd-icons)
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t))

(use-package rainbow-delimiters
  :hook
  ((prog-mode LaTeX-mode typst-ts-mode org-mode) . rainbow-delimiters-mode)
  :config
  (set-face-attribute 'rainbow-delimiters-depth-1-face nil :foreground "#007bff")   ; 亮蓝色 (Bright Blue)
  (set-face-attribute 'rainbow-delimiters-depth-2-face nil :foreground "#ffc107")   ; 琥珀黄 (Amber Yellow)
  (set-face-attribute 'rainbow-delimiters-depth-3-face nil :foreground "#e83e8c")   ; 亮粉色 (Hot Pink)
  (set-face-attribute 'rainbow-delimiters-depth-4-face nil :foreground "#28a745")   ; 鲜绿色 (Vivid Green)
  (set-face-attribute 'rainbow-delimiters-depth-5-face nil :foreground "#6f42c1")   ; 鲜紫色 (Sharp Purple)
  (set-face-attribute 'rainbow-delimiters-depth-6-face nil :foreground "#fd7e14")   ; 亮橙色 (Bright Orange)
  (set-face-attribute 'rainbow-delimiters-depth-7-face nil :foreground "#17a2b8")   ; 青色 (Cyan)
  (set-face-attribute 'rainbow-delimiters-depth-8-face nil :foreground "#d63384")   ; 洋红色 (Magenta)
  (set-face-attribute 'rainbow-delimiters-depth-9-face nil :foreground "#a6e22e")   ; 酸橙绿 (Lime Green)
  )

(use-package elisp-demos
  :init
  (advice-add 'describe-function-1 :after #'elisp-demos-advice-describe-function-1))

(provide 'init-ui)
;; init-ui.el ends here
