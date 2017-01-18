(defun indent-buffer ()
  (interactive)
  (save-excursion
	(indent-region (point-min) (point-max) nil)))


(defun toggle-comment-on-line-old ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
  )

(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)  )
  )

(defun my-helm-swoop-toggle-fuzzy ()
  "Toggle fuzzy matching in helm-swoop"
  (interactive)
  (if helm-swoop-use-fuzzy-match
	  (progn
		(message "Disabled fuzzy matching")
		(setq helm-swoop-use-fuzzy-match nil)
		)
	(progn
	  (message "Enabled fuzzy matching")
	  (setq helm-swoop-use-fuzzy-match t)
	  )

	)
  )

;; check https://www.emacswiki.org/emacs/ElispCookbook
(defun my-region-reverse (str)
  (interactive "P")
  (let* (
		 ;; variables
		 (regionContent (buffer-substring (mark) (point)))
		 (reversed (s-reverse regionContent))
		 )
	;; body
	(message  (concat "original '" regionContent "' reversed '" reversed "'" ))
	(kill-region (mark) (point))
	(insert reversed)
	)
  )




(fset 'test-macro
	  [?\M-x ?h ?e ?l ?m ?- ?s ?w ?o ?o ?p return ?i ?n ?\C-c ?\C-e ?\M-< ?\M-% ?i ?n return ?o ?u ?t return ?y ?y ?y return ?\C-x ?\C-s])

(defun my-replace (from to)
  "Ask from to"
  (interactive "sSearch string:
sReplace string: ")
  (message "Replace %s with %s" from to)
  (run-with-timer 0 nil (lambda(from to)
						  (interactive)
						  (message "1: %s" (buffer-name))
						  (run-with-idle-timer 0 nil (lambda(from to)
													   (message "2: %s" (buffer-name))
													   (run-with-idle-timer 0 nil (lambda(from to)
																					(interactive)
																					(switch-to-buffer helm-swoop-edit-buffer)
																					(beginning-of-buffer)
																					(query-replace from to)
																					) from to)
													   (helm-swoop-edit)
													   )from to)
						  
						  (helm-swoop :$query from)
						  ) from to)
  
  
  
  
  )

"Use ace-jump-line-mode to copy/paste a line in the current cursor position"



(defun my-copy-paste-line ()
  "Use ace-jump-line-mode to copy/paste a line in the current cursor position"
  (interactive)
  (setq ace-jump-mode-end-hook
        (list `(lambda()
                 (progn
				   (message "test2")
				   (kill-ring-save (line-beginning-position)
								   (+ -1 (line-beginning-position 2)))


				   (exchange-point-and-mark)
				   (yank)
				   (setq ace-jump-mode-end-hook nil)
				   ))))
  (ace-jump-line-mode)
  
  )

(defun snippet-grep-root ()
  (interactive)
  ;; ":12345"
  (let (
		(content (substring "the quick :12345\ fox"))
		(content (buffer-substring (line-beginning-position -6) (line-beginning-position)))
		(pattern (substring "\\([0-9]\\{5\\}\\)"))
		)
	(string-match pattern content)
	(message (match-string 0 content))
	;; (substring content)
	)

  
  )

(defun snippet-grep-http ()
  (interactive)
  ;; ":12345"
  (let (
		(content (buffer-substring (line-beginning-position -6) (line-beginning-position)))
		(pattern (substring "\\(http.*jad\\)"))
		)
	(string-match pattern content)
	(message (match-string 0 content))
	;; (substring content)
	)

  )




(defun my-queryreplace ()
  "testing"
  (interactive)
  (run-with-idle-timer 1 nil (lambda()
							   (beginning-of-buffer)
							   (query-replace "a" "b")
							   ))
  )


(fset 'my-macro-swoop
	  [?\M-x ?h ?e ?l ?m ?- ?s ?w ?o ?o ?p return ?g ?i ?r ?l ?s ?\M-< ?\C-c ?\C-e])

(fset 'my-test2
	  [?\M-x ?h ?e ?l ?m ?- ?s ?w ?o ?o ?p return ?g ?i ?r ?l ?s up up ?\M-< ?\C-c ?\C-e])
