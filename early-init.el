;;; early-init.el --- Early Initn -*- lexical-binding: t;-*-

;;; Code

;;; Startup hacks
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(setq package-enable-at-startup nil)

(setq native-comp-deferred-compilation nil)

(setq frame-inhibit-implied-resize t)


(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)



(add-hook
 'emacs-startup-hook
 (let ((orig-file-name-handler-alist file-name-handler-alist))
   (setq file-name-handler-alist nil)
   (lambda ()
     (setq gc-cons-threshold (* 16 1024 1024) ; 16mb
           gc-cons-percentage 0.1
	   read-process-output-max (* 4 1024 1024)
	   process-adaptive-read-buffering nil
           file-name-handler-alist orig-file-name-handler-alist))))

(provide 'early-init)

;;; early-init.el ends here
