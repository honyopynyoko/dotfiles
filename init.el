(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(load-theme 'wombat)

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
(straight-use-package 'general)
(straight-use-package 'dashboard)
(straight-use-package 'mood-line)
(straight-use-package 'rainbow-delimiters)
(straight-use-package 'ivy)
;;(straight-use-package 'dap-mode)
(straight-use-package 'magit)
(straight-use-package 'web-mode)
(straight-use-package 'typescript-mode)
(straight-use-package 'rjsx-mode)

(use-package general
:straight t)

(use-package dashboard
	:straight t
	:config
	(dashboard-setup-startup-hook))

(use-package mood-line
  :straight t
  :config
  (mood-line-mode 1))

(use-package rainbow-delimiters
  :straight t
  :config
  (rainbow-delimiters-mode 1))

(use-package ivy
  :diminish
  :config
  (ivy-mode 1))

(use-package magit
  :straight t)

(setq-default tab-width 2)
(setq-default indet-tabs-mode t)
(add-hook 'rjsx-mode-hook
					(lambda ()
						(setq indent-tabs-mode t)
						(setq tab-width 2)))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . rjsx-mode))


(general-define-key (kbd "<escape>") 'keyboard-escape-quit)
(general-define-key
 "M-l" 'forward-char
 "M-k" 'next-line
 "M-j" 'backward-char
 "M-i" 'previous-line)
