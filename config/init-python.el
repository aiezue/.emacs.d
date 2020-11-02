(leaf python-mode
  :tag "builtin"
  :custom
  ((python-indent-guess-indent-offset-verbose . nil)
   (py-indent-tabs-mode . t))
  :config
  (defun python-mode-style-setup ()
    (setq-default indent-tabs-mode t)
    (setq-default tab-width 4)
    (add-to-list 'write-file-functions 'delete-trailing-whitespace))
  :hook (python-mode-hook . python-mode-style-setup))

(leaf anaconda-mode
  :ensure t
  :hook ((python-mode-hook . anaconda-mode)
	 (python-mode-hook . anaconda-eldoc-mode)))

(leaf company-anaconda
  :ensure t
  :after company
  :config
  (add-to-list 'company-backends 'company-anaconda))

(leaf blacken
  :ensure t
  :hook python-mode-hook)

(leaf flycheck-pycheckers
  :ensure t
  :after flycheck
  :hook (flycheck-mode-hook . flycheck-pycheckers-setup))

(provide 'init-python)
