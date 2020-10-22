(leaf flycheck
  :ensure t
  :hook ((prog-mode-hook . flycheck-mode))
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error))
  :custom ((flycheck-emacs-lisp-initialize-packages . t)
	   (flycheck-emacs-lisp-load-path . 'inherit)
	   (flycheck-check-syntax-automatically . '(save mode-enabled))))

(leaf flycheck-posframe
  :ensure t
  :if (display-graphic-p)
  :hook ((flycheck-mode-hook . flycheck-posframe-mode))
  :custom (flycheck-posframe-inhibit-functions . '((lambda (&rest _)
						   (bound-and-true-p company-backend)))))

(leaf flycheck-clj-kondo
  :ensure t)

(provide 'init-flycheck)
