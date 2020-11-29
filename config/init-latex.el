(leaf auctex
  :ensure t
  :custom
  ((TeX-auto-save . t)
   (TeX-engine . 'xetex)
   (TeX-parse-self . t)
   (TeX-clean-confirm . nil)
   (TeX-save-query . nil)
   (TeX-source-correlate-mode . t)
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
   (TeX-mode-hook . LaTeX-math-mode)))

(leaf reftex
  :ensure t
  :hook (LaTeX-mode-hook . turn-on-reftex)
  :custom
  ((reftex-plug-into-AUCTeX . t)
   (reftex-enable-partial-scans . t)
   (reftex-save-parse-info . t)
   (reftex-use-multiple-selection-buffers . t)
   (reftex-toc-split-windows-fraction . 0.2)))

(leaf cdlatex
  :ensure t
  :hook ((LaTeX-mode-hook . turn-on-cdlatex)
	 (org-mode-hook   . turn-on-org-cdlatex)))

(provide 'init-latex)
