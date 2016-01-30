;;; package -- personal

;;; Commentary:

;;; Code:

(defun align-after-char (beg end c)
  "Align region delimited with BEG and END before the C boundary."
  (interactive "r\nsSeparation string: ")
  (align-regexp beg end (concat c "\\(\\s-*\\)") 1 1 t))

(defun align-before-char (beg end c)
  "Align region delimited with BEG and END after the C boundary."
  (interactive "r\nsSeparation string: ")
  (align-regexp beg end (concat "\\(\\s-*\\)" c) 1 1 t))


(define-key process-menu-mode-map (kbd "k") 'joaot/delete-process-at-point)

(defun joaot/delete-process-at-point ()
  (interactive)
  (let ((process (get-text-property (point) 'tabulated-list-id)))
    (cond ((and process
                (processp process))
           (delete-process process)
           (revert-buffer))
          (t
           (error "no process at point!")))))

(defun display-ansi-colors ()
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(provide 'my-functions)

;;; my-functions ends here
