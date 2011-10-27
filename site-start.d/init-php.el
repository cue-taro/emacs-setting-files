(autoload 'php-mode "php-mode" "major mode for editing PHP code" t)
(setq auto-mode-alist
      (cons '("\\.php[s34]?\\'" . php-mode) auto-mode-alist))

(setq php-mode-force-pear t)
(add-hook 'php-mode-user-hook
          '(lambda ()
             (setq php-manual-path "~/.emacs.d/lisp/php/php-manual-html")
             (setq php-manual-url "http://www.phppro.jp/phpmanual/")
             (setq tab-width 2)
             (setq c-basic-offset 2)
             (setq indent-tabs-mode nil)))

(provide 'init-php)