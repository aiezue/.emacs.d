(leaf flycheck
  :ensure t
  :hook ((prog-mode-hook . flycheck-mode))
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error))
  :custom ((flycheck-emacs-lisp-initialize-packages . t)
	   (flycheck-emacs-lisp-load-path . 'inherit)
	   (flycheck-check-syntax-automatically . '(save mode-enabled))))

(leaf flycheck-inline
  :ensure t
  :after flycheck
  :hook (flycheck-mode-hook . flycheck-inline-mode))

(leaf flycheck-clj-kondo
  :ensure t)

(provide 'init-flycheck)
