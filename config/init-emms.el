(leaf emms
  :ensure t
  :require (emms-setup emms-info-libtag)
  :init
  (emms-all)
  (emms-default-players)
  :config
  (emms-history-load)
  ;; (emms-librefm-scrobbler-enable)
  :custom
  ((emms-player-list . '(emms-player-mpv))
   (emms-info-functions . '(emms-info-libtag))
   (emms-source-file-directory-tree-function .
					     'emms-source-file-directory-tree-find)
   (emms-history-start-playing . t))
  :bind
  (("C-c e m"   . emms)
   ("C-c e SPC" . emms-pause)
   ("C-c e v"   . emms-smart-browse)
   ("C-c e a"   . emms-browse-by-album)
   ("C-c e t"   . emms-browse-by-artist)
   ("C-c e g"   . emms-browse-by-genre)
   ("C-c e n"   . emms-previous)
   ("C-c e p"   . emms-next)
   ("C-c e b"   . emms-seek-backward)
   ("C-c e f"   . emms-seek-forward)
   ("C-c e l"   . emms-volume-mode-minus)
   ("C-c e h"   . emms-volume-mode-plus)))

(leaf emms-playlist
  :tag "config"
  :after emms
  :custom
  ((emms-playlist-sort-function .
				'emms-playlist-sort-by-natural-order)
   (emms-repeat-playlist . t)
   (emms-playlist-buffer-name . "*Music*")
   (emms-playlist-default-major-mode . 'emms-playlist-mode)))

(leaf emms-source
  :tag "config"
  :after emms
  :custom
  ((emms-source-file-default-directory . "~/Music")
   (emms-directory . "~/Music/.emms/")))

(leaf emms-browser
  :tag "config"
  :after emms
  :custom
  ((emms-browser-info-artist-format . "* [%n]")
   (emms-browser-info-album-format .  "  💿 (%y) %n")
   (emms-browser-info-title-format  . "    ♪. %T. %n")
   (emms-browser-playlist-info-title-format . "%T. %t")
   (emms-browser-covers . 'emms-browser-cache-thumbnail-async)))

(provide 'init-emms)
