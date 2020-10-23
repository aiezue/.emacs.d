(leaf ivy
  :ensure t
  :hook ((after-init-hook . ivy-mode))
  :bind
  (("C-c C-r" . ivy-resume)
   ("C-c v p" . ivy-push-view)
   ("C-c v o" . ivy-pop-view)
   ("C-c v ." . ivy-switch-view))
  :custom
  ((ivy-use-virtual-buffers . t)
   (ivy-display-style . 'fancy)
   (enable-recursive-minibuffers . t)
   (ivy-re-builders-alist . 
			  '((t . ivy--regex-fuzzy)))
   (ivy-initial-inputs-alist . nil)))

(leaf counsel
  :ensure t
  :hook ((after-init-hook . counsel-mode))
  :bind
  (("C-x C-f" . counsel-find-file)
   ("C-x C-r" . counsel-recentf)
   ("C-x C-b"   . counsel-ibuffer)
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

(provide 'init-ivy)
