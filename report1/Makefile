## .config file
# EMACSCLIENT = /usr/bin/emacsclient -e server

include .config

pdf:
	xelatex README.tex

tex:
	${EMACSCLIENT} -e '(progn (find-file "README.org")(org-latex-export-to-latex))'

clean:
	rm -f *.aux *.lot *.log *.out *.toc *~

