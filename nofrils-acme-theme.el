(deftheme nofrils-acme
  "Port of No Frils Acme by Robert Melton.")

(let ((bg "#FFFFD7")
      (bg-highlight "#FFD787")
      (bg-light "#008000")
      (cyan "#D7FFFF")
      (fg "#000000")
      (fg-light "#AF8700")
      (purple "#FF00FF")
      (red "#FF5555"))

  (custom-theme-set-faces
   'nofrils-acme

   `(default ((t :background ,bg :foreground ,fg)))

   `(font-lock-builtin-face ((t nil)))
   `(font-lock-comment-face ((t :foreground ,fg-light)))
   `(font-lock-constant-face ((t nil)))
   `(font-lock-function-name-face ((t nil)))
   `(font-lock-keyword-face ((t nil)))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-regexp-grouping-backslash ((t nil)))
   `(font-lock-regexp-grouping-construct ((t nil)))
   `(font-lock-string-face ((t nil)))
   `(font-lock-type-face ((t nil)))
   `(font-lock-variable-name-face ((t nil)))
   `(font-lock-warning-face ((t :background "white" :foreground ,red)))

   `(fringe ((t :background ,cyan)))
   `(isearch ((t :background ,bg-light :foreground "white")))
   `(lazy-highlight ((t :background "white" :foreground ,fg)))
   `(minibuffer-prompt ((t :foreground ,fg)))

   `(mode-line ((t :background ,purple)))
   `(mode-line-inactive ((t :background ,cyan)))

   `(region ((t :background ,bg-highlight)))

   `(show-paren-match ((t :weight bold)))
   `(show-paren-mismatch ((t :background "red" :weight bold)))))

(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nofrils-acme)
