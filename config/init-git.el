(leaf magit
  :ensure t
  :bind ("C-x g" . magit-status))

(leaf diff-hl
  :ensure t
  :hook
  ((magit-pre-refresh-hook . diff-hl-magit-pre-refresh)
   (magit-post-refresh-hook. diff-hl-magit-post-refresh))
  :global-minor-mode global-diff-hl-mode)

(leaf gitignore-mode
  :ensure t)

(provide 'init-git)
