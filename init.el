(setq inhibit-startup-message t)

;; Disable the unnecessary UI components
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

(set-face-attribute 'default nil :font "Cascadia Code" :height 120)

;; Initializen package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

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
  :init (doom-modeline-mode 1))

(use-package ivy
  :diminish
  :config
  (ivy-mode 1))
