(leaf dired
  :tag "builtin"
  :hook (dired-mode-hook . diff-hl-dired-mode)
  :custom
  (dired-recursive-deletes . 'always)
  (dired-recursive-copies . 'always))

(leaf dired-aux
  :tag "builtin")

(leaf dired-x
  :tag "builtin")

(leaf diredfl
  :ensure t
  :hook ((dired-mode-hook . diredfl-mode)))

(provide 'init-dired)
