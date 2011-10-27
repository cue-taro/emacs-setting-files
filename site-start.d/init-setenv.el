; PATHの設定
; より下に記述した物がPATHの先頭に追加される
(dolist (dir (list
	      "/sbin"
	      "/usr/sbin"
	      "/bin"
	      "/usr/bin"
          "/sw/bin"
	      "/opt/local/bin"
	      "/usr/local/bin"
	      (expand-file-name "~/bin")
          (expand-file-name "~/local/bin")
	      (expand-file-name "~/.emacs.d/bin")
	      ))
  (when (and (file-exists-p dir) (not (member dir exec-path)))
    (setenv "PATH" (concat dir ":" (getenv "PATH")))
    (setq exec-path (append (list dir) exec-path))))

; MANPATHの設定
(setenv "MANPATH" (concat "/usr/local/man:/usr/share/man:/Developer/usr/share/man:/sw/share/man" (getenv "MANPATH")))

(setenv "LC_ALL" "ja_JP.UTF-8")

(provide 'init-setenv)