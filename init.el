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
  :init
  (load-theme 'catppuccin :no-confirm)
  (setq catppuccin-flavor 'mocha)
  (catppuccin-reload))

;; Use Doom Modeline
(use-package doom-modeline
  :init (doom-modeline-mode 1))

;; Pretty Icons
(use-package nerd-icons)

;; Completion
(use-package vertico
  :init
  (vertico-mode))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(use-package neotree)

(use-package magit
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))
(use-package git-gutter)
(use-package git-gutter-fringe)

 (use-package rainbow-delimiters)

(use-package projectile
  :init
  (projectile-mode +1))

;; Ruby & Rails
(use-package rubocop)
(use-package rspec-mode)
(use-package projectile-rails)

;; LSP
(use-package eglot)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(catppuccin-theme doom-modeline git-gutter git-gutter-fringe magit
                      marginalia neotree nerd-icons-ibuffer
                      projectile-rails rainbow-delimiters rspec-mode
                      rubocop vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
