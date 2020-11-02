(leaf auctex
  :ensure t
  :mode ("\\.tex\\'" . latex-mode)
  :custom
  ((TeX-auto-save . t)
   (TeX-engine . 'xetex)
   (TeX-parse-self . t)
   (TeX-clean-confirm . nil)
   (TeX-save-query . nil)
   (TeX-master . nil)
   (TeX-electric-escape . t)
   (TeX-source-specials-view-start-server . t)
   (TeX-source-correlate-start-server . t)
   (preview-auto-cache-preamble . t)
   (TeX-expand-list . '(("%sn" (lambda () server-name))))
   (TeX-view-program-list . '(("Zathura"
			       ("zathura %o"
				(mode-io-correlate " --synctex-forward %n:0:%b -x \"emacsclient --socket-name=%sn --no-wait +%{line} %{input}\""))
			       "zathura")))
   (TeX-view-program-selection . '(((output-dvi has-no-display-manager) "dvi2tty")
				   ((output-dvi style-pstricks) "dvips and gv")
				   (output-dvi "xdvi")
				   (output-pdf "Zathura")
				   (output-html "xdg-open"))))
  :hook
  ((TeX-after-compilation-finished-functions . TeX-revert-document-buffer)
   (latex-mode-hook . TeX-source-correlate-mode)
   (latex-mode-hook . LaTeX-math-mode)
   (latex-mode-hook . TeX-fold-mode)))

(leaf company-math
  :ensure t
  :config
  (defun my-latex-mode-setup ()
    (setq-local company-backends
		(append '((company-math-symbols-latex company-latex-commands))
			company-backends)))
  :hook (latex-mode-hook . my-latex-mode-setup))

(leaf company-auctex
  :ensure t
  :hook (latex-mode-hook)
  :config (company-auctex-init))

(leaf reftex
  :ensure t
  :hook (latex-mode-hook . turn-on-reftex)
  :custom
  ((reftex-plug-into-AUCTeX . t)
   (reftex-enable-partial-scans . t)
   (reftex-save-parse-info . t)
   (reftex-use-multiple-selection-buffers . t)
   (reftex-toc-split-windows-fraction . 0.2)))

(leaf cdlatex
  :ensure t
  :hook ((latex-mode-hook . turn-on-cdlatex)
	 (org-mode-hook   . turn-on-org-cdlatex)))

(provide 'init-latex)
