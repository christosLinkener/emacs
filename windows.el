(if (equal system-type 'windows-nt)
	(progn

	  (add-to-list 'exec-path "c:/Program Files/Git/usr/bin")
	  ;; (setq explicit-shell-file-name
	  ;; "C:/Program Files/Git/bin/bash.exe")
	  ;; (setq explicit-bash.exe-args '("--login" "-i"))
	  ;; (setq shell-file-name "bash")
	  ;; (setenv "SHELL" shell-file-name) 
	  )
  )
