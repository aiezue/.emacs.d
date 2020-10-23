(leaf aggressive-indent
  :ensure t
  :bind
  :global-minor-mode global-aggressive-indent-mode)

(leaf beginend
  :ensure t
  :bind
  :global-minor-mode beginend-global-mode)

(leaf undo-fu
  :ensure t
  :bind
  :bind
  (("C-/" . undo-fu-only-undo)
   ("C-?" . undo-fu-only-redo)))

(leaf undo-fu-session
  :ensure t
  :bind
  :global-minor-mode global-undo-fu-session-mode)

(leaf wgrep
  :ensure t
  :bind)

(leaf iedit
  :ensure t
  :bind
  ("C-c ;" . iedit-mode))

(leaf expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(leaf multiple-cursors
  :ensure t
  :bind
  (("C->" . mc/mark-next-like-this)
   ("C-<" . mc/mark-previous-like-this)
   ("C-c C-<" . mc/mark-all-like-this)))

(leaf hungry-delete
  :ensure t
  :global-minor-mode global-hungry-delete-mode
  :setq-default (hungry-delete-chars-to-skip . " \t\f\v"))

(leaf anzu
  :ensure t
  :global-minor-mode global-anzu-mode
  :custom
  ((anzu-mode-lighter . "")
   (anzu-deactivate-region . t)
   (anzu-search-threshold . 1000)
   (anzu-replace-threshold . 50)
   (anzu-replace-to-string-separator . " => "))
  :config
  (set-face-attribute 'anzu-mode-line nil
                      :foreground "yellow" :weight 'bold)
  :bind
  (("M-%" . anzu-query-replace)
   ("C-M-%" . anzu-query-replace-regexp)))

(leaf flyspell
  :tag "builtin"
  :hook ((prog-mode-hook . flyspell-prog-mode)
         (org-mode-hook  . flyspell-mode)
         (text-mode-hook . flyspell-mode))
  :custom
  ((ispell-list-command . "list")
   (ispell-program-name . "/usr/bin/aspell")
   (ispell-dictionary   . "en_US")
   (ispell-extra-args   . '("--sug-mode=ultra"))
   (ispell-silently-savep . t)))

(leaf flyspell-popup
  :ensure t
  :after flyspell
  :hook (flyspell-mode-hook . flyspell-popup-auto-correct-mode)
  :bind (("C-c 9" . flyspell-popup-correct)
	 (:popup-menu-keymap
	  ("TAB" . popup-next)
          ("S-TAB" . popup-previous))))

(leaf synosaurus
  :ensure t
  :bind ("C-c 0" . synosaurus-choose-and-replace)
  :hook (prog-mode-hook text-mode-hook org-mode-hook)
  :custom (synosaurus-choose-method . 'popup)
  :config (synosaurus-mode))

(provide 'init-editing)
