;; Sensible defaults
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode nil)
(setq visual-bell t)
(global-display-line-numbers-mode t)
(electric-indent-mode nil)
(electric-pair-mode t)
(global-display-fill-column-indicator-mode t)
(setq display-fill-column-indicator-column 100)
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default inhibit-startup-message t
  inhibit-startup-echo-area-message t)

;; Setup Mac command keys
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;; Set the default font
(set-frame-font "SF Mono 16" nil t)



(require 'use-package-ensure) ;; Load use-package-always-ensure
(setq use-package-always-ensure t) ;; Always ensures that a package is installed

(setq package-archives '(("melpa" . "https://melpa.org/packages/") ;; Sets default package repositories
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/"))) ;; For Eat Terminal

(setq package-quickstart t) ;; For blazingly fast startup times, this line makes startup miles faster

;; Use catppuccin
(use-package catppuccin-theme
  :ensure t
  :init
  (load-theme 'catppuccin :no-confirm)
  (setq catppuccin-flavor 'mocha)
  (catppuccin-reload))

;; Use Doom Modeline
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; Pretty Icons
(use-package nerd-icons
  :ensure t)

;; Completion
(use-package vertico
  :init
  (vertico-mode))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(use-package neotree
  :ensure t)

(use-package magit
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status))
  )

(use-package rainbow-delimiters)

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1))

;; Ruby & Rails
(use-package rubocop
  :ensure t)
(use-package rspec-mode
  :ensure t)
(use-package projectile-rails
  :ensure t)

