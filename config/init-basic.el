(leaf custom.el
  :tag "builtin"
  :custom
  (custom-file .  "~/.emacs.d/emacs-custom.el")
  :config
  (load custom-file))

(leaf whoami
  :tag "builtin"
  :custom
  (user-mail-address . "yanda1987@outlook.com")
  (user-full-name . "Alex Yan"))

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
  :custom (savehist-additional-variables .
					 '(kill-ring search-ring compile-command regexp-search-ring))
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

;; (leaf lexical-binding
;;   :tag "builtin"
;;   :custom (lexical-binding . t))

(leaf show-paren
  :tag "builtin"
  :config (show-paren-mode 1))

(leaf fringe
  :tag "builtin"
  :hook (after-init-hook))

(leaf abbrev
  :tag "builtin"
  :setq-default (abbrev-mode . t)
  :custom (save-abbrevs . 'silently))

(leaf uniquify
  :tag "builtin"
  :custom
  ((uniquify-buffer-name-style . 'style)
   (uniquify-separator .  "/")
   (uniquify-after-kill-buffer-p . t)
   (uniquify-ignore-buffers-re . "^\\*")))

(leaf recentf
  :tag "builtin"
  :custom
  ((recentf-max-saved-items . 500)
   (recentf-max-menu-items . 15)
   (recentf-auto-cleanup . 'never))
  :global-minor-mode recentf-mode)

(leaf delete-selection
  :tag "builtin"
  :config (delete-selection-mode 1))

(leaf encoding
  :tag "builtin"
  :config
  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8))

(leaf hippie
  :tag "builtin"
  :setq (hippie-expand-try-functions-list . '(try-expand-dabbrev
                                              try-expand-dabbrev-all-buffers
                                              try-expand-dabbrev-from-kill
                                              try-complete-file-name-partially
                                              try-complete-file-name
                                              try-expand-all-abbrevs
                                              try-expand-list
                                              try-expand-line
                                              try-complete-lisp-symbol-partially
                                              try-complete-lisp-symbol))
  :bind
  (("M-/" . hippie-expand)
   ("s-/" . hippie-expand)))

(leaf ret
  :tag "builtin"
  :bind ("RET" . newline-and-indent))

(leaf follow-symlinks
  :tag "builtin"
  :custom ((vc-follow-symlinks . t)))

(leaf authoinfo
  :tag "builtin"
  :custom (auth-sources . '((:source "~/.authinfo.gpg" :host t :protocol t))))

(leaf epa
  :tag "builtin"
  :config (epa-file-enable))

(leaf cal-china-x
  :ensure t
  :custom
  ((mark-holidays-in-calendar . t)
   (cal-china-x-important-holidays . 'cal-china-x-chinese-holidays)
   (cal-china-x-general-holidays . '((holiday-lunar 1 15 "元宵节")))
   (calendar-holidays . (append cal-china-x-important-holidays
				cal-china-x-general-holidays
				other-holidays))))

(provide 'init-basic)
