;; Allowing ~"asds"~ as inline code in org-mode
(require 'org)
(setcar (nthcdr 2 org-emphasis-regexp-components) " \t\r\n,")
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)

;; (setcar org-emphasis-regexp-components " \t('\"{[:alpha:]")
(setcar (nthcdr 1 org-emphasis-regexp-components) "[:alpha:]- \t.,:!?;'\")}\\")
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)

;; fontifying source blocks
(setq org-src-fontify-natively t
	  org-src-preserve-indentation t
	  )

(global-set-key (kbd "M-n") 'outline-next-visible-heading)
(global-set-key (kbd "M-p") 'outline-previous-visible-heading)
(setq org-todo-keyword-faces
	  '(
		;; ("TODO" . org-warning)
		("STARTED" . "yellow")
		;; ("CANCELED" . (:foreground "blue" :weight bold))
		("IN-PROGRESS" . (:foreground "DeepSkyBlue"))
		)
	  )

(org-babel-do-load-languages
 'org-babel-load-languages '((sh . t)))

(setq org-goto-interface 'outline-path-completionp)
(setq org-outline-path-complete-in-steps nil)

;; highlight latex fragments in org
(setq org-highlight-latex-and-related '(latex))
(add-to-list 'auto-mode-alist '("\\.org.txt\\'" . org-mode))

;; (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")

;; (setq ispell-program-name "aspell")
;; (setq ispell-personal-dictionary "C:/path/to/your/.ispell")

(require 'ispell)
(custom-set-variables
    '(ispell-dictionary "greek")
    '(ispell-program-name "C:\\Program Files (x86)\\Aspell\\bin\\aspell.exe"))
