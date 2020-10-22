(leaf eshell
  :tag "builtin"
  :bind ("C-c s" . eshell))

(leaf eshell-prompt-extras
  :ensure t
  :commands (epe-theme-lambda)
  :custom
  (eshell-highlight-prompt . nil)
  (eshell-prompt-function . #'epe-theme-lambda))

(leaf eshell-syntax-highlighting
  :ensure t
  :global-minor-mode eshell-syntax-highlighting-global-mode)

(provide 'init-shell)
