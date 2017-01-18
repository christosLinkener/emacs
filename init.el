;; (server-start)
;; (setq gc-cons-threshold 20000000) ;; 20 mb

(fset 'yes-or-no-p 'y-or-n-p)



;; turn off alarms
;; see more at https://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)

;; auto reload files when changed outside of emacs
(global-auto-revert-mode t)

;; backup directory
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs-saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups


;; better scrolling
(setq mouse-wheel-progressive-speed nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(cua-mode 1)

;; word-wrapping
(global-visual-line-mode 1)

;; (setq visual-line-fringe-indicators '(nil right-curly-arrow))
;; (electric-pair-mode t)
;; (ido-mode 1)
(set-default 'cursor-type 'box)
(column-number-mode 1)
(show-paren-mode)
(winner-mode t)
(windmove-default-keybindings 'meta)
(setq-default tab-width 4
			  indent-tabs-mode t)

;; Speed customizations
(remove-hook 'find-file-hooks 'vc-find-file-hook)
(setq w32-get-true-file-attributes nil)

(require 'package)
(setq package-enable-x3at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-initialize)



;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/bindings.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/windows.el")

;; Highlight current line
(global-hl-line-mode 1)
(set-face-attribute hl-line-face nil :underline nil)

;; Allowing ~"asds"~ as inline code in org-mode
(require 'org)
(setcar (nthcdr 2 org-emphasis-regexp-components) " \t\r\n,")
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
;; fontifying source blocks
(setq org-src-fontify-natively t)



;; (require 'visual-regexp)

;; The end
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(package-selected-packages
   (quote
	(s php-mode htmlize visual-regexp-steroids visual-regexp yasnippet spacemacs-theme zenburn-theme which-key use-package undo-tree swiper-helm sublime-themes soothe-theme solarized-theme smooth-scrolling smart-mode-line-powerline-theme rainbow-mode rainbow-delimiters nlinum multiple-cursors monokai-theme minimap matlab-mode material-theme key-chord iy-go-to-char imenu-anywhere helm-swoop gruber-darker-theme expand-region dracula-theme distinguished-theme dakrone-theme counsel company avy ample-zen-theme ample-theme ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#e91e63"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#2196F3"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#EF6C00"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#B388FF"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#76ff03"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#26A69A"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#FFCDD2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#795548"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#DCE775")))))
