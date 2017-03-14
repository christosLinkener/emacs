;; Allowing ~"asds"~ as inline code in org-mode
(require 'org)
(setcar (nthcdr 2 org-emphasis-regexp-components) " \t\r\n,")
(org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
;; fontifying source blocks
(setq org-src-fontify-natively t)

(setq org-todo-keyword-faces
	  '(
		;; ("TODO" . org-warning)
		("STARTED" . "yellow")
		;; ("CANCELED" . (:foreground "blue" :weight bold))
		("IN-PROGRESS" . (:foreground "DeepSkyBlue"))
		)
	  )

(setq org-goto-interface 'outline-path-completionp)
(setq org-outline-path-complete-in-steps nil)
