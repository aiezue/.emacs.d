(leaf custom.el
  :tag "builtin"
  :custom
  (custom-file .  "~/.emacs.d/emacs-custom.el")
  :config
  (load custom-file))

(leaf proxy
  :tag "builtin"
  :custom
  (url-proxy-services . '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
			  ("http"     . "localhost:8888")
			  ("https"    . "localhost:8888"))))

(leaf backup
  :tag "builtin"
  :custom
  (backup-directory-alist . `(("." . ,(concat user-emacs-directory
                                              "backups")))))
(leaf initialize
  :tag "builtin"
  :custom (inhibit-startup-screen . t))

(leaf graphical-interface
  :tag "builtin"
  :when (display-graphic-p)
  :config
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1))

(leaf autorevert
  :tag "builtin"
  :global-minor-mode global-auto-revert-mode)

(leaf y-or-n-alias
  :tag "builtin"
  :config (defalias 'yes-or-no-p 'y-or-n-p))

(leaf savehist
  :tag "builtin"
  :custom (savehist-additional-variables . '(kill-ring search-ring compile-command regexp-search-ring))
  :init (savehist-mode 1))

(leaf saveplace
  :tag "builtin"
  :init (save-place-mode 1))

(leaf paste-mouse
  :tag "builtin"
  :custom (mouse-yank-at-point . t))

(leaf kill-line-not-empty
  :tag "builtin"
  :custom (kill-whole-line . t))

(leaf lexical-binding
  :tag "builtin"
  :custom (lexical-binding . t))

(leaf show-paren
  :tag "builtin"
  :config (show-paren-mode 1))

(provide 'init-basic)
