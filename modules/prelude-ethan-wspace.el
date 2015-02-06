(prelude-require-packages '(ethan-wspace))

(global-ethan-wspace-mode 1)
;; (add-hook 'c-mode-common-hook
;;           (lambda()
;;             (add-hook 'before-save-hook
;;                       'delete-trailing-whitespace)))
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)
            (ethan-wspace-type-deactivate 'tabs)))
(add-hook 'web-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)
            (ethan-wspace-type-deactivate 'tabs)))
(add-hook 'makefile-mode-hook
          (lambda()
            (ethan-wspace-type-deactivate 'tabs)))

(provide 'prelude-ethan-wspace)
