(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))



(straight-use-package 'use-package)
(straight-use-package 'dashboard)
(straight-use-package 'helm)
(straight-use-package 'magit)

(use-package dashboard
	     :straight t
	     :config
	     (dashboard-setup-startup-hook))

(use-package helm
  :straight t)

(use-package magit
  :straight t)
