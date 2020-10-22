(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(\.nil nil t)
 '(backup-directory-alist '(("." . "~/.emacs.d/backups")))
 '(cider-auto-select-error-buffer t t)
 '(cider-repl-history-size 1000 t)
 '(cider-repl-pop-to-buffer-on-connect nil t)
 '(cider-repl-use-clojure-font-lock t t)
 '(cider-repl-wrap-history t t)
 '(cider-show-error-buffer t t)
 '(company-box-backends-colors nil t)
 '(company-box-doc-delay 0.3)
 '(company-box-enable-icon t)
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-delay 0.3)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-limit 20)
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(custom-file "~/.emacs.d/emacs-custom.el")
 '(custom-safe-themes
   '("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(dired-recursive-copies 'always)
 '(dired-recursive-deletes 'always)
 '(enable-recursive-minibuffers t)
 '(eshell-highlight-prompt nil)
 '(eshell-prompt-function 'epe-theme-lambda)
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(flycheck-emacs-lisp-initialize-packages t)
 '(flycheck-emacs-lisp-load-path 'inherit)
 '(flycheck-posframe-inhibit-functions '((lambda (&rest _) (bound-and-true-p company-backend))))
 '(inhibit-startup-screen t)
 '(ivy-use-virtual-buffers t)
 '(kill-whole-line t)
 '(lexical-binding t t)
 '(mouse-yank-at-point t)
 '(nrepl-hide-special-buffers t t)
 '(nrepl-popup-stacktraces nil t)
 '(package-archives
   '(("gnu" . "https://mirrors.bfsu.edu.cn/elpa/gnu/")
     ("melpa" . "https://mirrors.bfsu.edu.cn/elpa/melpa/")))
 '(package-selected-packages
   '(paredit wgrep diredfl eshell-syntax-highlighting esh-help eshell-prompt-extras yaml-mode undo-tree company-statistics beginend aggressive-indent agressive-indent diff-hl mood-line hungry-delete which-key cider clojure-mode company-quickhelp company-box company yasnippet-snippets yasnippet flycheck-clj-kondo flycheck-posframe flycheck gitignore-mode magit rainbow-delimiters color-theme-sanityinc-tomorrow counsel ivy feather diminish leaf-keywords leaf))
 '(safe-local-variable-values '((flycheck-disabled-checkers emacs-lisp-checkdoc)))
 '(savehist-additional-variables '(kill-ring search-ring compile-command regexp-search-ring))
 '(url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ("http" . "localhost:8888")
     ("https" . "localhost:8888"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
