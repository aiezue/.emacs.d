(leaf lsp-mode
  :ensure t
  :hook  ((scala-mode . lsp)
	  (lsp-mode . lsp-lens-mode))
  :custom (lsp-prefer-flymake . nil))

(leaf company-lsp
  :ensure t)

(leaf dap-mode
  :ensure t
  :hook
  ((lsp-mode . dap-mode)
   (lsp-mode . dap-ui-mode)))

(provide 'init-lsp)
