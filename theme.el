;; powerline colors
(setq powerline-default-separator 'arrow)
(setq powerline-default-separator-dir '(left . right))

(set-face-attribute 'mode-line-buffer-id nil :foreground "#000")
(set-face-attribute 'powerline-active1 nil :background "#222" :foreground "#aaa" :box nil)
(set-face-attribute 'powerline-active2 nil :background "#111" :foreground "#999" :box nil)
(set-face-attribute 'mode-line nil
                    :foreground "#333"
                    :background "DarkOrange"
					:box nil)

(set-face-attribute 'mode-line-buffer-id-inactive nil :foreground "#888")
(set-face-attribute 'powerline-inactive1 nil :background "#222" :foreground "#aaa")
(set-face-attribute 'powerline-inactive2 nil :background "#111" :foreground "#999")
(set-face-attribute 'mode-line-inactive nil
                    :foreground "#666"
                    :background "#111"
					:box nil)

;; Rainbow-delimiters
(custom-set-faces
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,"#e91e63"))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,"#2196F3"))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,"#EF6C00"))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,"#B388FF"))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,"#76ff03"))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,"#26A69A"))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,"#FFCDD2"))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,"#795548"))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,"#DCE775"))))
   )

