# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = LEDGE 
SOURCEDIR     = source user-guide
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@ SPHINXPROJ="dev-howto"  $(SPHINXBUILD) -M $@ source "$(BUILDDIR)/dev-howto" $(SPHINXOPTS) $(O)
	@ SPHINXPROJ="user-guide" $(SPHINXBUILD) -M $@ user-guide "$(BUILDDIR)/user-guide" $(SPHINXOPTS) $(O)

installpdf:
	@ echo "installing pdfs to ${DESTDIR}"
	@ find ./build -name '*.pdf' -print -exec cp {} ${DESTDIR} \;
