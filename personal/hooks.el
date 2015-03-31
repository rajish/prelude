(add-hook 'term-mode-hook
          '(lambda ()
             (setq yas-dont-activate t)))

(add-hook 'scala-mode-hook (lambda ()
                             (require 'ensime)
                             (ensime-mode)))
