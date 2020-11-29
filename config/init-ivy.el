(leaf ivy
  :ensure t
  :hook ((after-init-hook . ivy-mode))
  :bind
  (("C-c C-r" . ivy-resume)
   ("C-c v p" . ivy-push-view)
   ("C-c v o" . ivy-pop-view)
   ("C-x C-b" . ivy-switch-buffer)
   ("C-c v ." . ivy-switch-view))
  :custom
  ((ivy-use-virtual-buffers . t)
   (ivy-display-style . 'fancy)
   (enable-recursive-minibuffers . t)))

(leaf counsel
  :ensure t
  :hook ((after-init-hook . counsel-mode))
  :custom (counsel-fzf-cmd . "sk -f \"%s\" | cut -f 2")
  :bind
  (("C-x C-f" . counsel-find-file)
   ("C-x C-r" . counsel-recentf)
   ("C-c ."   . counsel-imenu)  
   ("C-c L" . counsel-load-library)
   ("C-c O" . counsel-find-file-extern)
   ("C-c P" . counsel-package)
   ("C-c R" . counsel-list-processes)
   ("C-c f" . counsel-find-library)
   ("C-c g" . counsel-grep)
   ("C-c h" . counsel-command-history)
   ("C-c i" . counsel-git)
   ("C-c j" . counsel-git-grep)
   ("C-c o" . counsel-outline)
   ("C-c r" . counsel-rg)
   ("C-c z" . counsel-fzf)
   (:minibuffer-local-map
    ("C-r"  . counsel-minibuffer-history))))

(leaf swiper
  :ensure t
  :bind
  (("C-s"   . swiper-isearch)
   ("C-r"   . swiper-isearch-backward)
   ("s-f"   . swiper)
   ("C-S-s" . swiper-all)))

(leaf ivy-rich
  :ensure t
  :config (ivy-rich-mode 1))

(leaf ace-link
  :ensure t
  :hook (w3m-mode)
  :init (ace-link-setup-default)
  :bind (("C-c C-S-o" . ace-link-addr)
	 ("C-c C-o"   . counsel-ace-link)))

(leaf avy
  :ensure t
  :init (avy-setup-default)
  :bind
  (("M-g c" . avy-goto-char)
   ("M-g M-c" . avy-goto-char-2)
   ("M-g g"   . avy-goto-line)
   ("M-g w"   . avy-goto-word-1)
   ("M-g M-w" . avy-goto-word-0)))

(leaf ace-window
  :ensure t
  :custom ((aw-dispatch-always . t))
  :bind ("M-o" . ace-window))

(provide 'init-ivy)
