;; 利用する環境共通の設定

;; 初期位置
(cd "~/")

;; ログの長さを無限に
; (setq message-log-max 't)
;; ログを出さない
; (setq message-log-max nil)

;; menubar
; (menu-bar-mode nil)
;; toolbar
;(tool-bar-mode 0)

;; ファイルを編集した場合コピーにてバックアップする
;; inode 番号を変更しない
(setq backup-by-copying t)
;; バックアップファイルの保存位置指定
;; !path!to!file-name~ で保存される
(setq backup-directory-alist
      '(
        ("^/etc/" . "~/.emacs.d/var/etc")
        ("." . "~/.emacs.d/var/emacs")
        ))

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; scratch のメッセージを空にする
(setq initial-scratch-message nil)

;; 自動改行関連
(setq-default auto-fill-mode nil)
(setq-default fill-column 300)
(setq text-mode-hook 'turn-off-auto-fill)

;; 削除ファイルをOSのゴミ箱へ
(setq delete-by-moving-to-trash t)

;; help key変更
;; BackSpace を C-h に変更
(global-set-key "\M-?" 'help-for-help)
(global-set-key "\C-h" 'backward-delete-char)

;; モードラインにライン数、カラム数表示
(line-number-mode t)
(column-number-mode t)

;; リージョンを kill-ring に入れないで削除できるようにする
(delete-selection-mode t)

;; TAB はスペース4個分を基本
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; 対応するカッコを色表示する
;; 特に色を付けなくても C-M-p, C-M-n を利用すれば対応するカッコ等に移動できる
(show-paren-mode t)
;; カッコその物に色が付く(デフォルト)
; (setq show-paren-style 'parenthesis)
;; カッコ内に色が付く
; (setq show-paren-style 'expression)
;; 画面に収まる場合はカッコのみ、画面外に存在する場合はカッコ内全体に色が付く
; (setq show-paren-style 'mixed)

;; 動的略語展開で大文字小文字を区別
; (setq dabbrev-case-fold-search nil)

;; 新規行を作成しない
; (setq next-line-add-newlines nil)

;; スクロールのマージン
;; 指定した数字行だけスクロール
(setq scroll-conservatively 10000)
;; scroll-conservatively の古いバージョン。一行ずつスクロールする
(setq scroll-step 1)
;; 上端、下端における余白幅(初期設定 0)
; (setq scroll-margin 10)
;; カーソル位置を変更しない
(setq scroll-preserve-screen-position t)
;; shell-mode において最後の行ができるだけウィンドウの一番下にくるようにする
(setq comint-scroll-show-maximum-output t)
;; C-v や M-v した時に以前の画面にあった文字を何行分残すか(初期設定 2)
; (setq next-screen-context-lines 5)


;; 終了時に聞く
(setq confirm-kill-emacs 'y-or-n-p)

(provide 'init-global)