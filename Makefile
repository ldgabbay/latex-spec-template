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

BUILD_DIR = build
OUTPUT_FN = document.pdf

$(OUTPUT_FN): force_rebuild
	cp -f $(BUILD_DIR)/root.pdf $(OUTPUT_FN)

force_rebuild:
	# mkdir -p $(BUILD_DIR)
	latexmk -output-directory=$(BUILD_DIR) -pdf root

clean:
	rm -rf $(BUILD_DIR)

distclean: clean
	rm -f $(OUTPUT_FN)


# FIGURES = $(patsubst %.dot,%.pdf,$(wildcard *.dot))
# 
# ROOTPDF = pdflatex root | grep -v "^Overfull"
# 
# refresh:
# 	$(ROOTPDF)
# 
# rebuild:
# 	$(ROOTPDF)
# 	$(ROOTPDF)
# 	$(ROOTPDF)
# 
# full: $(FIGURES) reindex
# 
# %.pdf: %.dot
# 	dot -o $@ -Tpdf $<
# 
# reindex:
# 	$(ROOTPDF)
# 	$(ROOTPDF)
# 	$(ROOTPDF)
# 	makeindex generalindex
# 	makeindex libraryindex
# 	makeindex grammarindex
# 	makeindex impldefindex
# 	makeindex -s basic.gst -o xrefindex.gls xrefindex.glo
# 	$(ROOTPDF)
# 	$(ROOTPDF)

### Makefile ends here
