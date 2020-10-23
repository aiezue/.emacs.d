(leaf paredit
  :ensure t
  :hook (emacs-lisp-mode-hook
	 ielm-mode-hook
	 lisp-mode-hook
	 lisp-interaction-mode-hook
	 eval-expression-minibuffer-setup-hook))

(provide 'init-paredit)
