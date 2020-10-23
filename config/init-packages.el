(setq gc-cons-threshold most-positive-fixnum)
(eval-and-compile
  (customize-set-variable
   'package-archives '(("gnu" . "https://mirrors.bfsu.edu.cn/elpa/gnu/")
		       ("melpa" . "https://mirrors.bfsu.edu.cn/elpa/melpa/")))

  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf)))

(leaf leaf-keywords
  :ensure t
  :config (leaf-keywords-init))

(provide 'init-packages)
