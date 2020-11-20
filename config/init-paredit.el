(leaf paredit
  :ensure t
  :hook (emacs-lisp-mode-hook
	 ielm-mode-hook
	 clojure-mode-hook
	 cider-mode-hook
	 cider-repl-mode-hook
	 lisp-mode-hook
	 lisp-interaction-mode-hook
	 eval-expression-minibuffer-setup-hook))

(provide 'init-paredit)
