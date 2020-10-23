(leaf clojure-mode
  :ensure t
  :hook
  ((clojure-mode-hook . paredit-mode)
   (clojure-mode-hook . subword-mode)
   (clojure-mode-hook . eldoc-mode))
  :require (flycheck-clj-kondo))

(leaf cider
  :ensure t
  :custom
  ((cider-auto-select-error-buffer . t)
   (cider-repl-pop-to-buffer-on-connect . nil)
   (cider-repl-use-clojure-font-lock . t)
   (cider-repl-wrap-history . t)
   (cider-repl-history-size . 1000)
   (cider-show-error-buffer . t)
   (nrepl-hide-special-buffers . t)
   (nrepl-popup-stacktraces .nil))
  :hook
  ((cider-repl-mode-hook . subword-mode)
   (cider-repl-mode-hook . paredit-mode)
   (cider-repl-mood-hook . eldoc-mode))
  :bind
  (:cider-mode-map
   ("C-c C-v C-c" . cider-send-and-evaluate-sexp)
   ("C-c C-p"     . cider-eval-print-last-sexp)))

(leaf clojure-mode-extra-font-locking
  :ensure t)

(provide 'init-clojure)
