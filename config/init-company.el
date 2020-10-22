(leaf company
  :ensure t
  :hook ((prog-mode-hook . company-mode))
  :bind
  (("TAB" . company-indent-or-complete-common)
   ("C-c TAB" . company-yasnippet)
   (:company-active-map
    ("C-n" . company-select-next-or-abort)
    ("C-p" . company-select-previous-or-abort)
    ("RET" . company-complete-selection)
    ("TAB" . company-complete-common-or-cycle)))
  :custom 
  ((company-minimum-prefix-length . 1)
   (company-dabbrev-ignore-case . nil)
   (company-dabbrev-downcase . nil)
   (company-idle-delay . 0)
   (company-tooltip-align-annotations . t)
   (company-tooltip-limit . 20)))

(leaf company-box
  :ensure t
  :if (display-graphic-p)
  :hook ((company-mode-hook . company-box-mode))
  :custom
  (company-box-enable-icon . t)
  (company-box-backends-colors . nil)
  (company-box-doc-delay . 0.3))

(leaf company-quickhelp
  :ensure t
  :if (display-graphic-p)
  :hook ((company-mode-hook . company-quickhelp-mode))
  :custom (company-quickhelp-delay . 0.3))

(leaf company-statistics
  :ensure t
  :hook prog-mode-hook)

(provide 'init-company)
