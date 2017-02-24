(use-package monokai-theme
  :ensure t)
(use-package sublime-themes
  :ensure t
  :config
  (load-theme 'spolsky t)
  )
;; (use-package material-theme
;; :ensure t)

;;(use-package visual-regexp
;; :ensure t
;; )

(use-package nlinum
  :ensure t
  :config
  (global-nlinum-mode 1)
  )

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1)


  )

;; string manipulations (eg s-reverse to reverse a string)
(use-package s
  :ensure t
  )

(use-package php-mode
  :ensure t
  )

(use-package markdown-mode
  :ensure t
  )

(use-package htmlize
  :ensure t
  )

(use-package smooth-scrolling
  :ensure t
  :config
  (smooth-scrolling-mode 1)
  (setq scroll-step 1)
  (setq scroll-conservatively 10000)
  (setq auto-window-vscroll nil)
  )
;;(load-theme 'monokai t)

										; (use-package smex
										;	:ensure t
										;	:bind(("M-x" . smex))
										;	)

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'matlab-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  )
(use-package rainbow-mode
  :ensure t
  )


(use-package helm
  :ensure t
  :bind(
		("M-x" . helm-M-x)
		("C-<tab>" . helm-mini)
		("C-x C-f" . helm-find-files)
		:map helm-map
		("<tab>" . helm-execute-persistent-action)
		("<left>" . left-char)
		("<right>" . right-char)
		)
  :init
  (require 'helm-config)
  :config
  
  (setq helm-M-x-fuzzy-match t
		helm-recentf-fuzzy-match t
		helm-apropos-fuzzy-match t
		helm-buffers-fuzzy-matching t
		helm-completion-in-region-fuzzy-match t
		helm-mode-fuzzy-match t)
  ;; disable auto input
  (setq helm-swoop-pre-input-function
		(lambda () nil))

  )

(use-package helm-swoop
  :ensure t
  :config
  (setq helm-swoop-use-fuzzy-match nil)
  (setq helm-swoop-speed-or-color t)
  (setq helm-autoresize-max-height 35)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode)
  )

;; it looks like counsel is a requirement for swiper
(use-package counsel
  :ensure t
  )


(use-package swiper
  :ensure t
  ;; :bind(("C-s" . swiper))
  :config(progn
		   (ivy-mode 1)
		   (setq ivy-use-virtual-buffers t)
		   )
  )



(use-package expand-region
  :ensure t
  :bind
  ("C-o" . er/expand-region)

  )

;; Auto Completion package
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case t)
  )

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme)

  )
;; (use-package smart-mode-line
;;   :ensure t
;;   )

;; (use-package smart-mode-line-powerline-theme
;;   :ensure t
;;   )

(use-package undo-tree
  :ensure t
  :bind(
		("M-/" . undo-tree-visualize)
		("C-z" . undo-tree-undo)
		("C-S-z" . undo-tree-redo)
		)
  :config
  (unbind-key "C-/" undo-tree-undo)
  (global-undo-tree-mode 1)

  )

(use-package ace-jump-mode
  :ensure t
  :bind("C-x SPC" . ace-jump-mode)

  )

(use-package avy
  :ensure t)

(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C->") 'mc/mark-next-like-this-word)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this-word)
  (global-set-key (kbd "M-<f3>") 'mc/mark-all-like-this)
  (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

  )

(use-package iy-go-to-char
  :ensure t
  :init
  (defun my-iy-enter()
    (interactive)
    (setq overriding-local-map t)
    )
  :bind(
		:map iy-go-to-char-keymap
			 ("C-a" . my-iy-enter)
			 )
  )

(use-package key-chord
  :ensure t
  :config
  ;; disable in mini buffers
  (setq key-chord-two-keys-delay .05
		key-chord-one-key-delay .1)
  (defun disable-key-chord-mode ()
	(set (make-local-variable 'input-method-function) nil))

  (add-hook 'minibuffer-setup-hook #'disable-key-chord-mode)

  (key-chord-mode 1)
  ;; (key-chord-define-global "hj" 'undo)
  ;; Jump Word
  (key-chord-define-global " w" 'ace-jump-mode)
  ;; Jump Character
  (key-chord-define-global " c" 'ace-jump-char-mode)
  ;; Jump Line
  (key-chord-define-global " l" 'ace-jump-line-mode)
  
  ;; Expand Region (r for region)
  (key-chord-define-global "rj" 'er/expand-region)
  (key-chord-define-global "rk" 'er/contract-region)
  

  ;; mnemonic: list buffers
  (key-chord-define-global "ha" 'helm-mini)
  (key-chord-define-global "hs" 'helm-swoop)
  (key-chord-define-global "hr" 'helm-all-mark-rings)
  ;; iy gdo to char
  ;; (key-chord-define-global "fg" 'iy-go-to-char)
  ;; (key-chord-define-global "df" 'iy-go-to-char-backward)
  
  ;; move between windows -WASD- like movement, except for the right hand
  ;; using ijkl
  (key-chord-define-global "wl" 'windmove-right)
  (key-chord-define-global "wk" 'windmove-down)
  (key-chord-define-global "wj" 'windmove-left)
  (key-chord-define-global "wi" 'windmove-up)

    ;; windows
  (key-chord-define-global "wd" 'delete-window)
  (key-chord-define-global "wo" 'delete-other-windows)
  ;; (key-chord-define-global "x2" 'split-window-below)
  (key-chord-define-global "wh" (lambda () (interactive)(split-window-horizontally) (other-window 1)))
  (key-chord-define-global "wn" (lambda () (interactive)(split-window-vertically) (other-window 1)))

  )
