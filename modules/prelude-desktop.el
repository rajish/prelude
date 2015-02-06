(prelude-require-packages '(desktop))

(add-hook 'desktop-after-read-hook
          '(lambda ()
             ;; desktop-remove clears desktop-dirname
             (setq desktop-dirname-tmp desktop-dirname)
             (desktop-remove)
             (setq desktop-dirname desktop-dirname-tmp)))

(provide 'prelude-desktop)
