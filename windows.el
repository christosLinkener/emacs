(if (equal system-type 'windows-nt)
	(progn

	  (add-to-list 'exec-path "c:/Program Files/Git/usr/bin")

	  (setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")

	  (setq shell-file-name "bash")
	  (setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
	  (setenv "SHELL" shell-file-name)
	  (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)


	  ;; (setq shell-file-name "bash")
	  ;; (setenv "SHELL" shell-file-name) 
	  )
  )
