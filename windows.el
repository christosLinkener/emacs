(if (equal system-type 'windows-nt)
	(setq explicit-shell-file-name
		  "C:/Program Files/Git/bin/bash.exe")
  (setq explicit-bash.exe-args '("--login" "-i"))
  (setq shell-file-name "bash")
  (setenv "SHELL" shell-file-name) 

  (add-to-list 'exec-path "C:/Program Files/Git/bin")
  (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
  )
