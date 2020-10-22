(leaf font
  :tag "builtin"
  :config
  (add-to-list 'default-frame-alist '(font . "Sarasa Mono Slab SC-12")) ;for emacsclient
  (set-face-attribute 'default nil :font "Sarasa Mono Slab SC-12")
  (set-face-attribute 'variable-pitch nil :font "Noto Serif CJK SC-12")
  (set-face-attribute 'fixed-pitch nil :font "Sarasa Mono Slab SC-12")
  (set-fontset-font t 'symbol "JoyPixels")
  (set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)
  (set-fontset-font t 'symbol "Symbola" nil 'append))

(leaf visual-line-hl-line-pretty-symbol
  :tag "builtin"
  :config
  (global-visual-line-mode t)
  (global-hl-line-mode t)
  (prettify-symbols-mode t)
  (recentf-mode t))

(leaf line-number
  :tag "builtin"
  :global-minor-mode global-display-line-numbers-mode)

(leaf winner
  :tag "builtin"
  :config
  (winner-mode 1))

(leaf rainbow-delimiters
  :ensure t
  :hook (prog-mode-hook))

(leaf which-key
  :ensure t
  :init (which-key-mode))

(leaf hungry-delete
  :ensure t
  :global-minor-mode global-hungry-delete-mode
  :setq-default (hungry-delete-chars-to-skip . " \t\f\v"))

(provide 'init-ui)
