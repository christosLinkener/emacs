;; (message "Adding pdf latex etc in path:\n")

(setenv "PATH"
		(concat
		 "D:/Portables/Miktex-portable/texmfs/install/miktex/bin" ";" (getenv "PATH")
		 )
		)

;; printing the new path
;; (message (getenv "PATH"))

(setq org-latex-pdf-process 
	  '("xelatex -interaction nonstopmode %f"
		"xelatex -interaction nonstopmode %f")) ;; for multiple passes
