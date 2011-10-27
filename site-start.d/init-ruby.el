(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(
                ("\\.rb$" . ruby-mode)
                ("Rakefile" . ruby-mode)
                ("\\.rake$" . ruby-mode)
                ("\\.rjs" . ruby-mode)
                ) auto-mode-alist))

;; インデント幅を2に設定
(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)

(setq interpreter-mode-alist
      (append '(("ruby" . ruby-mode)) interpreter-mode-alist))

(setq ruby-deep-indent-paren-style nil)


;; magic comment
;; Ruby1.9から、ファイルの文字コードを明記する必要がある
(defun ruby-insert-magic-comment-if-needed ()
  "バッファのcoding-systemをもとに、magic commentをつける。"
  (when (and (eq major-mode 'ruby-mode)
             (find-multibyte-characters (point-min) (point-max) 1))
    (save-excursion
     (goto-char 1)
     (when (looking-at "^#!")
       (forward-line 1))
     (if (re-search-forward "^#.+coding" (point-at-eol) t)
         (delete-region (point-at-bol) (point-at-eol))
       (open-line 1))
     (let* ((coding-system (symbol-name buffer-file-coding-system))
            (encoding (cond ((string-match "japanese-iso-8bit\\|euc-j" coding-system)
                              "euc-jp")
                             ((string-match "shift.jis\\|sjis\\|cp932" coding-system)
                              "shift-jis")
                             ((string-match "utf-8" coding-system)
                              "utf-8"))))
       (insert (format "# -*- coding: %s -*-" encoding))))))

(add-hook 'before-save-hook 'ruby-insert-magic-comment-if-needed)
;; magic comment
;; Ruby1.9から、ファイルの文字コードを明記する必要がある
(defun ruby-insert-magic-comment-if-needed ()
  "バッファのcoding-systemをもとに、magic commentをつける。"
  (when (and (eq major-mode 'ruby-mode)
             (find-multibyte-characters (point-min) (point-max) 1))
    (save-excursion
     (goto-char 1)
     (when (looking-at "^#!")
       (forward-line 1))
     (if (re-search-forward "^#.+coding" (point-at-eol) t)
         (delete-region (point-at-bol) (point-at-eol))
       (open-line 1))
     (let* ((coding-system (symbol-name buffer-file-coding-system))
            (encoding (cond ((string-match "japanese-iso-8bit\\|euc-j" coding-system)
                              "euc-jp")
                             ((string-match "shift.jis\\|sjis\\|cp932" coding-system)
                              "shift-jis")
                             ((string-match "utf-8" coding-system)
                              "utf-8"))))
       (insert (format "# -*- coding: %s -*-" encoding))))))

(add-hook 'before-save-hook 'ruby-insert-magic-comment-if-needed)
;; magic comment
;; Ruby1.9から、ファイルの文字コードを明記する必要がある
(defun ruby-insert-magic-comment-if-needed ()
  "バッファのcoding-systemをもとに、magic commentをつける。"
  (when (and (eq major-mode 'ruby-mode)
             (find-multibyte-characters (point-min) (point-max) 1))
    (save-excursion
     (goto-char 1)
     (when (looking-at "^#!")
       (forward-line 1))
     (if (re-search-forward "^#.+coding" (point-at-eol) t)
         (delete-region (point-at-bol) (point-at-eol))
       (open-line 1))
     (let* ((coding-system (symbol-name buffer-file-coding-system))
            (encoding (cond ((string-match "japanese-iso-8bit\\|euc-j" coding-system)
                              "euc-jp")
                             ((string-match "shift.jis\\|sjis\\|cp932" coding-system)
                              "shift-jis")
                             ((string-match "utf-8" coding-system)
                              "utf-8"))))
       (insert (format "# -*- coding: %s -*-" encoding))))))

(add-hook 'before-save-hook 'ruby-insert-magic-comment-if-needed)
;; magic comment
;; Ruby1.9から、ファイルの文字コードを明記する必要がある
(defun ruby-insert-magic-comment-if-needed ()
  "バッファのcoding-systemをもとに、magic commentをつける。"
  (when (and (eq major-mode 'ruby-mode)
             (find-multibyte-characters (point-min) (point-max) 1))
    (save-excursion
     (goto-char 1)
     (when (looking-at "^#!")
       (forward-line 1))
     (if (re-search-forward "^#.+coding" (point-at-eol) t)
         (delete-region (point-at-bol) (point-at-eol))
       (open-line 1))
     (let* ((coding-system (symbol-name buffer-file-coding-system))
            (encoding (cond ((string-match "japanese-iso-8bit\\|euc-j" coding-system)
                              "euc-jp")
                             ((string-match "shift.jis\\|sjis\\|cp932" coding-system)
                              "shift-jis")
                             ((string-match "utf-8" coding-system)
                              "utf-8"))))
       (insert (format "# -*- coding: %s -*-" encoding))))))

(add-hook 'before-save-hook 'ruby-insert-magic-comment-if-needed)
;; magic comment
;; Ruby1.9から、ファイルの文字コードを明記する必要がある
(defun ruby-insert-magic-comment-if-needed ()
  "バッファのcoding-systemをもとに、magic commentをつける。"
  (when (and (eq major-mode 'ruby-mode)
             (find-multibyte-characters (point-min) (point-max) 1))
    (save-excursion
     (goto-char 1)
     (when (looking-at "^#!")
       (forward-line 1))
     (if (re-search-forward "^#.+coding" (point-at-eol) t)
         (delete-region (point-at-bol) (point-at-eol))
       (open-line 1))
     (let* ((coding-system (symbol-name buffer-file-coding-system))
            (encoding (cond ((string-match "japanese-iso-8bit\\|euc-j" coding-system)
                              "euc-jp")
                             ((string-match "shift.jis\\|sjis\\|cp932" coding-system)
                              "shift-jis")
                             ((string-match "utf-8" coding-system)
                              "utf-8"))))
       (insert (format "# -*- coding: %s -*-" encoding))))))

(add-hook 'before-save-hook 'ruby-insert-magic-comment-if-needed)
(provide 'init-ruby)