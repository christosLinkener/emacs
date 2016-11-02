; Control-tab: cycle open buffers (like cycle tabs)
; (global-set-key [C-tab] 'ido-switch-buffer)

; Alt-f4: quit
(global-set-key (kbd "M-<f4>") 'save-buffers-kill-terminal)
; (define-key minibuffer-local-map (kbd "ESC") 'keyboard-escape-quit)
(global-set-key (kbd "M-q") 'keyboard-escape-quit)

(setq inhibit-splash-screen t)
(global-set-key (kbd "C-/") 'toggle-comment-on-line)
(global-set-key (kbd "C-?") 'comment-or-uncomment-region)


(setq term-mode-hook nil)

(defun my-term-hook ()
  (define-key term-mode-map (kbd "<C-return>")
    (lambda ()
	  (interactive)
	  (message "here4")
	  (term-char-mode)
	  (term-send-raw-string "\C-m")
	  ;; (kbd "<ret>")
	  (sit-for 0 500)
	  (term-line-mode)
	  (kill-line)
	  ))
  ;;  (define-key term-mode-map (kbd "C-c") 'kill-ring-save)
  ;; (define-key term-mode-map (kbd "C-v") 'yank)
  
  (define-key term-raw-map (kbd "<M-right>")
    (lambda () (interactive) (message "here")))
  (define-key term-raw-map (kbd "<M-up>")
    (lambda () (interactive) (term-send-raw-string "\e[1;3A")))
  (define-key term-raw-map (kbd "<M-down>")
    (lambda () (interactive) (term-send-raw-string "\e[1;3B")))
  )

(add-hook 'term-mode-hook 'my-term-hook)

