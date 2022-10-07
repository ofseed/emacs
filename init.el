(setq inhibit-startup-message t)

;; Disable the unnecessary UI components
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

;; Base UI configuration
(set-face-attribute 'default nil :font "Cascadia Code" :height 120)

(column-number-mode)
(global-display-line-numbers-mode)

(xterm-mouse-mode t)

;; Set custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Initializen package sources
(require 'package)

(setq package-archives
      '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
	("elpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-pacakge
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode))

(use-package doom-themes
  :config (load-theme 'doom-one-light t))

(use-package dashboard
  :config (dashboard-setup-startup-hook))

(use-package which-key
  :init (which-key-mode)
  :diminish
  :config
  (setq which-key-idle-delay 0.3))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package ivy
  :init (ivy-mode)
  :diminish)

(use-package ivy-rich
  :init (ivy-rich-mode))

(use-package counsel
  :init (counsel-mode))
