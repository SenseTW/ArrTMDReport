;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Vari

(
 (org-mode . ((eval . (make-local-variable 'after-save-hook))
	      (eval . (add-hook 'after-save-hook 'org-latex-export-to-latex))
	      (eval . (load-file "../ox-extra.el"))
	      (eval . (add-hook 'org-export-filter-parse-tree-functions 'org-export-ignore-headlines))
	      (org-latex-tables-booktabs . t)
	      (org-latex-prefer-user-labels . t)))
 )
