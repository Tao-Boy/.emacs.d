;;; init-latex.el -*- lexical-binding: t; -*-

;; Code:
(use-package auctex
  :straight t 
  :config
  (setq-default TeX-engine 'xetex)
  (setq TeX-auto-save nil
	TeX-pdf-mode t
	TeX-master 'shared
	TeX-save-query nil
	TeX-parse-self t))

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (add-hook 'after-save-hook
                      (lambda ()
                        (TeX-command-run-all nil))
                      nil t)))

(use-package xenops
  :config
    (plist-put org-format-latex-options :justify 'right)
  (defun eli/xenops-justify-fragment-overlay (element &rest _args)
    (let* ((ov-beg (plist-get element :begin))
           (ov-end (plist-get element :end))
           (ov (car (overlays-at (/ (+ ov-beg ov-end) 2) t)))
           (position (plist-get org-format-latex-options :justify))
           (inline-p (eq 'inline-math (plist-get element :type)))
           width offset)
      (when (and ov
                 (imagep (overlay-get ov 'display)))
        (setq width (car (image-display-size (overlay-get ov 'display))))
        (cond
         ((and (eq 'center position) 
               (not inline-p))
          (setq offset (floor (- (/ fill-column 2)
                                 (/ width 2))))
          (if (< offset 0)
              (setq offset 0))
          (overlay-put ov 'before-string (make-string offset ? )))
         ((and (eq 'right position) 
               (not inline-p))
          (setq offset (floor (- fill-column
                                 width)))
          (if (< offset 0)
              (setq offset 0))
          (overlay-put ov 'before-string (make-string offset ? )))))))
  (advice-add 'xenops-math-display-image :after
              #'eli/xenops-justify-fragment-overlay))

(provide 'init-latex)
;; init-latex.el ends here
