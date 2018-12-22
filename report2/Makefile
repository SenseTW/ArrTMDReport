OUTFILE=$(shell basename "$(CURDIR)").pdf

## .config file
# EMACSCLIENT = /usr/bin/emacsclient -e server
include .config

pdf:
	xelatex --no-pdf README.tex
	bibtex README.aux
	xelatex --no-pdf README.tex
	xelatex --no-pdf README.tex
	xdvipdfmx README.xdv -o "$(OUTFILE)"

tex:
	${EMACSCLIENT} -e '(progn (find-file "README.org")(org-latex-export-to-latex))'

clean:
	rm -f *.aux *.lot *.log *.out *.toc *.lof *.bcf *.bbl *.blg *.run.xml *~
	rm README.org
	git checkout README.org

walk-around: clean
	${EMACSCLIENT} -e '(lloyd-walk-around)'
