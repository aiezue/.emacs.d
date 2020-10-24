(leaf org
  :tag "builtin"
  :bind (("C-c l" . org-store-link)
	 ("C-c a" . org-agenda)
	 ("C-c n" . counsel-org-goto-all)
	 ("C-c c" . counsel-org-capture)
	 (:org-agenda-mode-map
	  ("C-c C-q" . counsel-org-tag-agenda))
	 (:org-mode-map
	  ("C-c n" . counsel-org-goto)
	  ("C-c C-q" . counsel-org-tag)
	  ("C-c 1" . counsel-org-link)
	  ("C-c 2" . counsel-org-entity)))
  :custom
  ((org-html-htmlize-output-type . 'css)
   (org-html-htmlize-font-prefix . "org-")
   (org-src-fontify-natively . t)
   (org-latex-pdf-process . 
			  '("xelatex -interaction nonstopmode %f"
			    "xelatex -interaction nonstopmode %f"))
   (org-latex-compiler . "xelatex")
   (org-latex-create-formula-image-program . 'imagemagick))
  :custom-face
  ((org-level-1 . '((t (:inherit outline-1 :box t :height 1.4))))
   (org-level-2 . '((t (:inherit outline-2 :box t :height 1.25))))
   (org-level-3 . '((t (:inherit outline-3 :height 1.15))))
   (org-level-4 . '((t (:inherit outline-4 :height 1.05))))
   (org-level-5 . '((t (:inherit outline-5 :height 1.0))))))

(leaf org-babel-load-languages
  :tag "builtin"
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (lisp       . t)
     (clojure    . t)
     (plantuml   . t)
     (org        . t)
     (python     . t)
     (dot        . t)
     (latex      . t))))

(leaf org-variable-pitch
  :ensure t
  :hook (org-mode-hook . org-variable-pitch-minor-mode))

(leaf org-agenda
  :tag "builtin"
  :custom
  ((org-todo-keywords         . '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)") (sequence "WAIT(w)" "HOLD(h)""IDEA(i)" "|" "STOP(s@/!)")))
   (org-default-notes-file    .  "~/org/inbox.org")
   (org-agenda-files          . '("~/org/school.org"
				  "~/org/personal.org"))))

(leaf org-refile
  :tag "builtin"
  :custom
  (org-refile-targets . '((nil :maxlevel . 2)
                          (org-agenda-files :maxlevel . 3))))

(leaf org-capture
  :tag "builtin"
  :custom
  ((org-reverse-note-order . t)
   (org-capture-templates . '(("s" "Todo with Link"
			       entry (file+headline "~/org/inbox.org" "Todo")
			       "* TODO %i%? \n:PROPERTIES: \n:CREATED: %U \n:END: \n %a\n")
			      ("z" "Bookmark with Link"
			       entry (file+headline "~/org/inbox.org" "Bookmark")
			       "* Thoughts on %a \n:PROPERTIES: \n:CREATED: %U \n:END: \n %?\n")
			      ("p" "Process the Mail in 2 Days"
			       entry (file+headline "~/org/inbox.org" "Todo")
			       "* TODO [#A] Process mail from %:fromname on %:subject\nSCHEDULED:%t\nDEADLINE:
                                 %(org-insert-time-stamp (org-read-date nil t \"+2d\"))\n:PROPERTIES:\n:CREATED:
                                 %U\n:END:\n %a" :immediate-finish t :prepend t)
			      ("t" "TODO w/ Date [inbox]"
			       entry (file+headline "~/org/inbox.org" "Todo")
			       "* TODO %? %<%y-%m-%d>\n:properties:\n:created: %u\n:end:\n %i\n")
			      ("L" "Hugo Life Post"
			       entry (file+headline "~/blog/content-org/blog.org" "life")
			       (function org-hugo-new-subtree-post-capture-template))
			      ("F" "Hugo Finness Post"
			       entry (file+headline "~/blog/content-org/blog.org" "fitness")
			       (function org-hugo-new-subtree-post-capture-template))
			      ("S" "Hugo Site Post"
			       entry (file+headline "~/blog/content-org/blog.org" "site")
			       (function org-hugo-new-subtree-post-capture-template))))))

(leaf org-archive
  :tag "builtin"
  :custom (org-archive-location . "::* Archived Tasks"))

(leaf ox-twbs
  :ensure t)

(leaf org-re-reveal
  :ensure t
  :custom (org-re-reveal-root . "/home/aiezue/org/reveal.js"))

(leaf ox-hugo
  :ensure t
  :config
  (defun org-hugo-new-subtree-post-capture-template ()
    "returns `org-capture' template string for new hugo post.
see `org-capture-templates' for more information."
    (let* ((title (read-from-minibuffer "post title: "))
           (fname (org-hugo-slug title)))
      (mapconcat #'identity
		 `(,(concat "* todo " title)":properties:"
                   ,(concat ":export_file_name: " fname)
                   ":end:""%?\n")"\n"))))

(leaf org-download
  :ensure t
  :bind (:org-mode-map
	 ("<f2>" . org-download-screenshot)
	 ("<f5>" . org-download-yank))
  :setq-default (org-download-image-dir . "~/org/images")
  :hook (dired-mode-hook . org-download-enable)
  :custom ((org-download-method . 'directory)
	   (org-download-screenshot-method . "scrot -d 3 -s %s")
	   (org-download-heading-lvl . nil)))

(leaf ox-beamer
  :require ox-beamer)

(provide 'init-org)
