(leaf projectile
  :ensure t
  :config (projectile-mode)
  :custom ((projectile-completion-system . 'ivy)
	   (projectile-indexing-method . 'alien)
	   (projectile-enable-caching  . t))
  :bind
  ("C-c p" . projectile-command-map))

(leaf counsel-projectile
  :ensure t
  :config (counsel-projectile-mode))

(provide 'init-projectile)
