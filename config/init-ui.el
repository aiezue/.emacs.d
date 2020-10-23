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

(leaf visual-bell
  :tag "builtin"
  :custom (visual-bell . t))

(leaf fill-column
  :tag "builtin"
  :setq-default (fill-column . 80))

(leaf visual-line-hl-line
  :tag "builtin"
  :global-minor-mode (global-visual-line-mode global-hl-line-mode))

(leaf prettify-symbols
  :tag "builtin"
  :global-minor-mode global-prettify-symbols-mode)

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

(leaf mwim
  :ensure t
  :bind
  (("C-a" . mwim-beginning-of-code-or-line)
   ("C-e" . mwim-end-of-code-or-line)))

(leaf windmove
  :tag "builtin"
  :config (windmove-default-keybindings))

(leaf auto-fill-mode
  :hook (prog-mode-hook text-mode-hook))

(provide 'init-ui)
