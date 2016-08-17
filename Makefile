### -*- mode: makefile-gmake -*-

# Note: If building on Mac OS X, and if you use MacPorts, the following ports
# should be installed:
#
#   texlive-latex
#   texlive-plain-extra
#   texlive-latex-recommended
#   texlive-latex-extra
#   texlive-fonts-recommended
#   texlive-fonts-extra
#   texlive-generic-recommended

FIGURES = $(patsubst %.dot,%.pdf,$(wildcard *.dot))

ROOTPDF = pdflatex root | grep -v "^Overfull"

default:
	latexmk -pdf root

clean:
	rm -f *.aux std-gram.ext etc/front.aux *.idx *.ilg *.ind *.log *.lot *.lof *.tmp *.out *.glo *.gls *.fls *.fdb* *.toc *.xtr

distclean: clean
	rm -f root.pdf

refresh:
	$(ROOTPDF)

rebuild:
	$(ROOTPDF)
	$(ROOTPDF)
	$(ROOTPDF)

full: $(FIGURES) reindex

%.pdf: %.dot
	dot -o $@ -Tpdf $<

reindex:
	$(ROOTPDF)
	$(ROOTPDF)
	$(ROOTPDF)
	makeindex generalindex
	makeindex libraryindex
	makeindex grammarindex
	makeindex impldefindex
	makeindex -s basic.gst -o xrefindex.gls xrefindex.glo
	$(ROOTPDF)
	$(ROOTPDF)

### Makefile ends here
