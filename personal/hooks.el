(add-hook 'term-mode-hook
          '(lambda ()
             (setq yas-dont-activate t)))

(add-hook 'scala-mode-hook (lambda ()
                             (require 'ensime)
                             (ensime-mode)))

(ignore-errors
  (require 'ansi-color)
  (defun my-colorize-compilation-buffer ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))
  (add-hook 'compilation-filter-hook 'my-colorize-compilation-buffer))
