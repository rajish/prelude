(prelude-require-packages '(deft phi-search))

(setq
 deft-extension "md"
 deft-directory "~/.deft/"
 deft-text-mode 'markdown-mode
 deft-use-filename-as-title t)
(global-set-key (kbd "<f9>") 'deft)

(provide 'prelude-deft)
