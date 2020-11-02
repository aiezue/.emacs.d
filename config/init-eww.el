(leaf eww
  :commands eww eww-follow-link
  :custom
  ((browse-url-browser-function . 'eww-browse-url)
   (eww-search-prefix . "http://www.google.com/search?q="))
  :config
  (defun eww-wiki (text)
    "Function used to search wikipedia for the given text."
    (interactive (list (read-string "Wiki for: ")))
    (eww (format "https://en.m.wikipedia.org/wiki/Special:Search?search=%s"
		 (url-encode-url text))))
  :hook
  (eww-mode . ace-link-mode)
  :bind
  ((:eww-mode-map
    ("o" . ace-link-eww))
   ("C-c w w" . eww)
   ("C-c w i" . eww-wiki)
   ("C-c w l" . eww-follow-link)))

(provide 'init-eww)
