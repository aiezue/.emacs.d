(leaf magit
  :ensure t
  :bind ("C-x g" . magit-status))

(leaf diff-hl
  :ensure t
  :global-minor-mode global-diff-hl-mode
  :hook ((magit-pre-refresh-hook . diff-hl-magit-pre-refresh)
	 (magit-post-refresh-hook . diff-hl-magit-post-refresh)))

(leaf gitignore-mode
  :ensure t)

(provide 'init-git)
