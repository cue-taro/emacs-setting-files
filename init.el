;; 常時デバッグ状態
(setq debug-on-error t)

;; Emacs 設定ディレクトリを設定
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory (expand-file-name "~/.emacs.d/")))

;; 引数を load-path へ追加
;; normal-top-level-add-subdirs-to-load-path はディレクトリの中で
;; [A-Za-z] で開始する物だけ追加する。
;; 追加したくない物は . や _ を先頭に付与しておけばロードしない。
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; Emacs Lisp の Path を通す
(add-to-load-path "lisp"
		  "local-lisp" ;; 変更したり、自作の Emacs Lisp
		  "private"    ;; 自分専用の物
		  "site-start.d") ;; 初期設定ファイル

;; 文字コード
;;(set-language-environment 'Japanese)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

(cond
 ((or (eq window-system 'mac) (eq window-system 'ns))
  (require 'ucs-normalize)
  (setq file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs)
  )
 (t
  (setq file-name-coding-system 'utf-8)
  (setq locale-coding-system 'utf-8)))

;; 全環境共通設定
(require 'init-global)

;; 環境依存設定
(require 'init-main)
