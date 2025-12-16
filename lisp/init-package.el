;;; init-package.el --- -*- lexical-binding: t; -*-

;;; Code:

(setq straight-vc-git-default-clone-depth 1)
(setq straight-use-package-by-default t)
(setq use-package-always-defer t)
(setq use-package-compute-statistics t)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://gh-proxy.com/raw.githubusercontent.com/Tao-Boy/straight.el/main/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(provide 'init-package)
;;; init-package.el ends here
