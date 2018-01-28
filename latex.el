;; (message "Adding pdf latex etc in path:\n")

(let*
	(
	 (miktex "C:\\\\miktex\\texmfs\\install\\miktex\\bin")
	 (texlive "C:\\texlive\\bin\\win32")
	 (latexBin miktex) ;; change this line accordingly
	 )
  (setenv "PATH"
		  (concat latexBin ";" (getenv "PATH"))
		  )
  (message "The new path:\n")
  (message (getenv "PATH"))

  ;; adding to the exec path (used for latex fragments) - which do not work :O
  (setq exec-path (append (list latexBin) exec-path))
  )


(setq org-latex-prefer-user-labels t)
;; (setq org-latex-listings t)
;; (add-to-list 'org-latex-packages-alist '("" "listings"))

;; note: run 'pip install pygments' first
(setq org-latex-listings 'minted
	  org-latex-packages-alist '(("" "minted"))
	  )


;; the 2nd call is there because if not, the table of contents are not rendered for some reason..
(setq org-latex-pdf-process 
	  '("xelatex -shell-escape -interaction=nonstopmode %f"
		"bibtex %b"
		"xelatex -shell-escape -interaction=nonstopmode %f"
		"bibtex %b"
		"xelatex -shell-escape -interaction=nonstopmode %f"
		))


;; (setq org-latex-pdf-process '(
							  ;; "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
							  ;; "bibtex %b"
							  ;; "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
							  ;; ))
