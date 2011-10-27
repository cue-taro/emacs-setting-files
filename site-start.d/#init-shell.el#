; shellの存在を確認
(defun skt:shell()
  (or (executable-find "zsh")
      (executable-find "bash")
      (executable-find "cmdproxy")
      (error "can't find 'shell' command in PATH!!")))
; shell名の設定
(setq shell-file-name (skt:shell))
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)

; システムのterminfoを利用する
(setq system-uses-terminfo nil)


;; multi-term.el
(require 'multi-term)
(add-hook 'term-mode-hook
          '(lambda ()
             ; 実行する shell の設定
             (setq multi-term-program shell-file-name)
             ; 一部キーが取られるので無視設定
             (add-to-list 'term-unbind-key-list '"M-x")
             ; Emacs の標準的キー割当にする
             (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
             (define-key term-raw-map (kbd "C-y") 'term-paste)
             ))

; C-c t : term呼び出し
(global-set-key (kbd "C-c t") '(lambda ()
 				 (interactive)
				 (multi-term)))
; 複数起動ではなく既存のバッファを選択するようにする
(global-set-key (kbd "C-c t") '(lambda ()
				 (interactive)
				 (if (get-buffer "*terminal<1>*")
				     (switch-to-buffer "*terminal<1>*")
				   (multi-term))))

; shell-mode でエスケープ文字を綺麗に表示
(autoload 'ansi-color-for-comint-mode-on "ansi-color"
  "Set `ansi-color-for-comint-mode' to t.")
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)







(provide 'init-shell)