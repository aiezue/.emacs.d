(add-hook 'after-init-hook
		  (lambda () (setq gc-cons-threshold 100000000)))

(setq gc-cons-threshold most-positive-fixnum
	  gc-cons-percentage 0.6)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(fringe-mode -1)
(blink-cursor-mode -1)
