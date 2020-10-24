(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(\.nil nil t)
 '(TeX-auto-save t t)
 '(TeX-clean-confirm nil t)
 '(TeX-electric-escape t t)
 '(TeX-engine 'xetex t)
 '(TeX-expand-list '(("%sn" (lambda nil server-name))) t)
 '(TeX-master nil t)
 '(TeX-parse-self t t)
 '(TeX-save-query nil t)
 '(TeX-source-correlate-start-server t t)
 '(TeX-source-specials-view-start-server t t)
 '(TeX-view-program-list
   '(("Zathura"
      ("zathura %o"
       (mode-io-correlate " --synctex-forward %n:0:%b -x \"emacsclient --socket-name=%sn --no-wait +%{line} %{input}\""))
      "zathura")) t)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open")) t)
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(auth-sources '((:source "~/.authinfo.gpg" :host t :protocol t)))
 '(backup-directory-alist '(("." . "~/.emacs.d/backups")))
 '(cider-auto-select-error-buffer t t)
 '(cider-repl-history-size 1000 t)
 '(cider-repl-pop-to-buffer-on-connect nil t)
 '(cider-repl-use-clojure-font-lock t t)
 '(cider-repl-wrap-history t t)
 '(cider-show-error-buffer t t)
 '(company-box-backends-colors nil t)
 '(company-box-doc-delay 0.3)
 '(company-box-enable-icon t)
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-quickhelp-delay 0.3)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-limit 20)
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(custom-file "~/.emacs.d/emacs-custom.el")
 '(custom-safe-themes
   '("3899c0f0c9fa57ace9760821780dfe74b7b43de2ebf1938ff7aa21542461c487" "f2c35f8562f6a1e5b3f4c543d5ff8f24100fae1da29aeb1864bbc17758f52b70" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))
 '(dired-recursive-copies 'always)
 '(dired-recursive-deletes 'always)
 '(enable-recursive-minibuffers t)
 '(eshell-highlight-prompt nil t)
 '(eshell-prompt-function 'epe-theme-lambda t)
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(flycheck-emacs-lisp-initialize-packages t)
 '(flycheck-emacs-lisp-load-path 'inherit)
 '(flycheck-posframe-inhibit-functions '((lambda (&rest _) (bound-and-true-p company-backend))))
 '(inhibit-startup-screen t)
 '(ispell-dictionary "en_US")
 '(ispell-extra-args '("--sug-mode=ultra"))
 '(ispell-list-command "list" t)
 '(ispell-program-name "/usr/bin/aspell")
 '(ispell-silently-savep t)
 '(ivy-display-style 'fancy)
 '(ivy-initial-inputs-alist nil)
 '(ivy-mode t)
 '(ivy-re-builders-alist '((t . ivy--regex-fuzzy)) t)
 '(ivy-rich-mode t)
 '(ivy-use-virtual-buffers t)
 '(kill-whole-line t)
 '(lexical-binding t t)
 '(markdown-command "pandoc" t)
 '(mouse-yank-at-point t)
 '(nrepl-hide-special-buffers t t)
 '(nrepl-popup-stacktraces nil t)
 '(org-agenda-files '("~/org/school.org" "~/org/personal.org"))
 '(org-archive-location "::* Archived Tasks")
 '(org-capture-templates
   '(("s" "Todo with Link" entry
      (file+headline "~/org/inbox.org" "Todo")
      "* TODO %i%? 
:PROPERTIES: 
:CREATED: %U 
:END: 
 %a
")
     ("z" "Bookmark with Link" entry
      (file+headline "~/org/inbox.org" "Bookmark")
      "* Thoughts on %a 
:PROPERTIES: 
:CREATED: %U 
:END: 
 %?
")
     ("p" "Process the Mail in 2 Days" entry
      (file+headline "~/org/inbox.org" "Todo")
      "* TODO [#A] Process mail from %:fromname on %:subject
SCHEDULED:%t
DEADLINE:
                                 %(org-insert-time-stamp (org-read-date nil t \"+2d\"))
:PROPERTIES:
:CREATED:
                                 %U
:END:
 %a" :immediate-finish t :prepend t)
     ("t" "TODO w/ Date [inbox]" entry
      (file+headline "~/org/inbox.org" "Todo")
      "* TODO %? %<%y-%m-%d>
:properties:
:created: %u
:end:
 %i
")
     ("L" "Hugo Life Post" entry
      (file+headline "~/blog/content-org/blog.org" "life")
      #'org-hugo-new-subtree-post-capture-template)
     ("F" "Hugo Finness Post" entry
      (file+headline "~/blog/content-org/blog.org" "fitness")
      #'org-hugo-new-subtree-post-capture-template)
     ("S" "Hugo Site Post" entry
      (file+headline "~/blog/content-org/blog.org" "site")
      #'org-hugo-new-subtree-post-capture-template)))
 '(org-default-notes-file "~/org/inbox.org")
 '(org-download-heading-lvl nil)
 '(org-download-method 'directory)
 '(org-download-screenshot-method "scrot -d 3 -s %s")
 '(org-html-htmlize-font-prefix "org-")
 '(org-html-htmlize-output-type 'css)
 '(org-latex-compiler "xelatex")
 '(org-latex-create-formula-image-program 'imagemagick)
 '(org-latex-pdf-process
   '("xelatex -interaction nonstopmode %f" "xelatex -interaction nonstopmode %f"))
 '(org-re-reveal-root "/home/aiezue/org/reveal.js" t)
 '(org-refile-targets '((nil :maxlevel . 2) (org-agenda-files :maxlevel . 3)))
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-todo-keywords
   '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
     (sequence "WAIT(w)" "HOLD(h)" "IDEA(i)" "|" "STOP(s@/!)")))
 '(package-archives
   '(("gnu" . "https://mirrors.bfsu.edu.cn/elpa/gnu/")
     ("melpa" . "https://mirrors.bfsu.edu.cn/elpa/melpa/")))
 '(package-selected-packages
   '(srcery-theme zenburn-theme ivy-rich ox-beamer org-download ox-hugo org-re-reveal ox-twbs org-variable-pitch counsel-projectile projectile markdown-mode synosaurus flyspell-popup flyspell-correct-popup flyspell-correct-ivy flyspell-correct gcmh auto-fill-mode company-auctex company-math tex delete-selection flycheck-inline anzu mwim multiple-cursors flx paredit diredfl eshell-syntax-highlighting eshell-prompt-extras yaml-mode expand-region iedit wgrep undo-fu-session undo-fu beginend aggressive-indent clojure-mode-extra-font-locking cider clojure-mode company-statistics company-quickhelp company-box company yasnippet-snippets yasnippet flycheck-clj-kondo flycheck-posframe flycheck gitignore-mode diff-hl magit hungry-delete which-key rainbow-delimiters mood-line color-theme-sanityinc-tomorrow counsel ivy leaf-keywords leaf))
 '(preview-auto-cache-preamble t t)
 '(projectile-completion-system 'ivy)
 '(projectile-enable-caching t)
 '(projectile-indexing-method 'alien)
 '(recentf-auto-cleanup 'never)
 '(recentf-max-menu-items 15)
 '(recentf-max-saved-items 500)
 '(reftex-enable-partial-scans t t)
 '(reftex-plug-into-AUCTeX t t)
 '(reftex-save-parse-info t t)
 '(reftex-toc-split-windows-fraction 0.2 t)
 '(reftex-use-multiple-selection-buffers t t)
 '(save-abbrevs 'silently)
 '(savehist-additional-variables '(kill-ring search-ring compile-command regexp-search-ring))
 '(synosaurus-choose-method 'popup)
 '(uniquify-after-kill-buffer-p t)
 '(uniquify-buffer-name-style 'style nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-separator "/")
 '(url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ("http" . "localhost:8888")
     ("https" . "localhost:8888")))
 '(user-full-name "Alex Yan")
 '(user-mail-address "yanda1987@outlook.com")
 '(vc-follow-link t t)
 '(visual-bell t t)
 '(whitespace-line-column 80)
 '(whitespace-style '(face tabs empty trailing lines-tail)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))) nil "Customized with leaf in org block")
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))) nil "Customized with leaf in org block")
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))) nil "Customized with leaf in org block")
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))) nil "Customized with leaf in org block")
 '(org-level-5 ((t (:inherit outline-5 :height 1.0))) nil "Customized with leaf in org block"))
