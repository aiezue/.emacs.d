(leaf scala-mode
  :interpreter
  ("scala" . scala-mode))

(leaf sbt-mode
  :commands sbt-start sbt-command
  :config
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)
  :custom
  (sbt:program-options . '("-Dsbt.supershell=false")))

(provide 'init-scala)
