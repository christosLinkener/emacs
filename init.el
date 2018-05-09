; see https://github.com/nilcons/emacs-use-package-fast
(setq gc-cons-threshold 64000000)
(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))


;; Disable all version control
(setq vc-handled-backends nil)

(fset 'yes-or-no-p 'y-or-n-p)
;; (require 'tramp)
;; (set-default 'tramp-auto-save-directory '(("." . "~/.emacs-saves/tramp")))
;; (set-default 'tramp-default-method "ssh")

;; turn off alarms
;; see more at https://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)

;; auto reload files when changed outside of emacs
;; (global-auto-revert-mode t)


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
;; (remove-hook 'find-file-hooks 'vc-find-file-hook)
;; (setq w32-get-true-file-attributes nil)

(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
  
(require 'use-package)

(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/bindings.el")
(load "~/.emacs.d/theme.el")
(load "~/.emacs.d/windows.el")
(load "~/.emacs.d/linux.el")
(load "~/.emacs.d/latex.el")
(load "~/.emacs.d/org-customization.el")

;; Highlight current line
(global-hl-line-mode 1)
(set-face-attribute hl-line-face nil :underline nil)

;; Keeping clipboard data before replacing it with emacs copy/kill etc
(setq save-interprogram-paste-before-kill t)

;; display shell in same buffer
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)

;; ipython
(setq
   python-shell-interpreter "ipython"
   python-shell-interpreter-args "--profile=dev"
)


;; (require 'visual-regexp)

;; The end
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
	("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default)))
 '(default-input-method "greek")
 '(ispell-dictionary "greek")
 '(ispell-program-name "C:\\Program Files (x86)\\Aspell\\bin\\aspell.exe")
 '(org-image-actual-width 100)
 '(package-selected-packages
   (quote
	(helm-swoop org-ref magit yasnippet windresize use-package undo-tree sublime-themes smooth-scrolling rainbow-mode rainbow-delimiters powerline php-mode nlinum multiple-cursors monokai-theme markdown-mode key-chord iy-go-to-char htmlize helm-projectile helm-ag expand-region counsel company avy ag ace-jump-mode)))
 '(safe-local-variable-values
   (quote
	((org-time-stamp-custom-formats "<%Y-%m>" . "<%Y-%m-%d %H:%M>")
	 (org-latex-image-default-option . "max size={\\textwidth}{\\textheight}")
	 (org-latex-image-default-width . "")
	 (org-latex-image-default-option . "max size={\\textwidth}{\\textheight}]")
	 (org-latex-default-figure-position . "H")
	 (org-latex-default-figure-position . H)
	 (org-src-preserve-indentation . t)
	 (eval setq org-latex-default-figure-position "H" org-src-preserve-indentation t)
	 (eval setq org-latex-default-figure-position "H")
	 (eval setq org-latex-default-figure-position "")
	 (org-todo-keyword-faces
	  ("TODO" . "red")
	  ("IN-PROGRESS" . "DeepSkyBlue")
	  ("DONE" . "green"))
	 (org-todo-keyword-faces
	  ("TODO" . "red")
	  ("IN-PROGRESS" . "CornflowerBlue")
	  ("DONE" . "green"))
	 (org-todo-keyword-faces
	  ("TODO" . "red")
	  ("IN-PROGRESS" . "blue")
	  ("DONE" . "green"))))))
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
