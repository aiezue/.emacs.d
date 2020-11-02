(leaf smartparens
  :ensure t
  :require smartparens-config
  :hook ((prog-mode-hook . smartparens-strict-mode))
  :config
  (sp-use-smartparens-bindings))

(provide 'init-smartparens)
