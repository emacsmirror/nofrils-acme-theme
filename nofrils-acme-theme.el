(deftheme nofrils-acme
  "Port of No Frils Acme by Robert Melton.")

(let ((background "#FFFFD7")
      (foreground "#000000")
      (comment "#AF8700")
      (err "#FF5555")
      (fringe "#EAFFFF")
      (search "#40883F")
      (selection "#CCCC7C")
      (status "#AEEEEE"))

  (custom-theme-set-faces
   'nofrils-acme

   `(default ((t :background ,background :foreground ,foreground)))

   ;; Highlight only comments and errors.
   `(font-lock-builtin-face ((t nil)))
   `(font-lock-comment-face ((t :foreground ,comment)))
   `(font-lock-constant-face ((t nil)))
   `(font-lock-function-name-face ((t nil)))
   `(font-lock-keyword-face ((t nil)))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-regexp-grouping-backslash ((t nil)))
   `(font-lock-regexp-grouping-construct ((t nil)))
   `(font-lock-string-face ((t nil)))
   `(font-lock-type-face ((t nil)))
   `(font-lock-variable-name-face ((t nil)))
   `(font-lock-warning-face ((t :background "white" :foreground ,err)))

   ;; Show searches and selections.
   `(isearch ((t :background ,search :foreground "white")))
   `(lazy-highlight ((t :background "white" :foreground ,foreground)))
   `(region ((t :background ,selection)))

   ;; Parenthesis matching is never wrong.
   `(show-paren-match ((t :weight bold)))
   `(show-paren-mismatch ((t :background ,err :weight bold)))

   ;; Decorate the frame to resemble Acme.
   `(fringe ((t :background ,fringe)))
   `(minibuffer-prompt ((t :foreground ,foreground)))
   `(mode-line ((t :background ,status)))
   `(mode-line-inactive ((t :background ,fringe)))

   ;; Org mode needs to chill.
   `(org-done ((t :weight bold)))
   `(org-todo ((t :weight bold)))))

;;;###autoload
(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nofrils-acme)
