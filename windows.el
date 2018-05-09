(if (equal system-type 'windows-nt)
	(progn
	  ;; latex
	  (let*
		  (
		   (miktex "C:\\miktex\\texmfs\\install\\miktex\\bin")
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

	  (add-to-list 'exec-path "c:/Program Files/Git/usr/bin")

	  (setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
	  (setq org-babel-sh-command "'C:/Program Files/Git/bin/bash.exe'")

	  (setq shell-file-name "bash")
	  (setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
	  (setenv "SHELL" shell-file-name)
	  (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

	  ;; TODO for opening gpg files
	  ;; see https://emacs.stackexchange.com/questions/21699/how-to-configure-easypg-with-gpg4win-or-any-other-windows-gpg-version
	  )
  )
