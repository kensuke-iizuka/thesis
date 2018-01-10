LATEX   = platex
BIBTEX  = pbibtex
DVIPDF  = dvipdfm -p a4
XDVI	= pxdvi
EXTRACTBB = extractbb

TARGET  = main
FIGDIR  = ./fig

# Change Coding
LOCAL_CODE_OP = -Lu -w8
HLAB_CODE_OP = -Lu -e
CHCODING_SRCS = *.tex *.bib *.bst

# Including Tex Style Path
#TEXINPUTS := ./texmf

all: pdf #chmod

# sync hlab
tallo_hlab:
	-rm -rf .DS_Store
	make -C .. to_hlab
to_hlab_check:
	-rm -rf .DS_Store
	make -C .. to_hlab_check
from_hlab:
	make -C .. from_hlab
from_hlab_check:
	make -C .. from_hlab_check

# permission
chmod:
	-chmod -R g+w .
	-chmod -R g+w * 
	-chmod -R g+w *.*

chcoding:
	@echo "#################################"
	@echo "# change coding of src          #"
	@echo "#################################"
	@echo "## Before ##"
	nkf -g $(CHCODING_SRCS)
ifeq ($(findstring hlab,$(HOME)),hlab)
	nkf --overwrite $(HLAB_CODE_OP) $(CHCODING_SRCS)
else 
	nkf --overwrite $(LOCAL_CODE_OP) $(CHCODING_SRCS)
endif
	@echo "## After ##"
	nkf -g $(CHCODING_SRCS)

e:
ifeq ($(findstring hlab,$(HOME)),hlab)
	emacs -nw $(TARGET).tex
else
	emacs $(TARGET).tex
endif

dvi_only:
	$(LATEX) $(TARGET)

dvi: 
	make clean
#	make chcoding
	make extractbb
	-$(LATEX) $(TARGET)
	-$(BIBTEX) $(TARGET)
	-$(LATEX) $(TARGET)
	-$(LATEX) $(TARGET)

pdf_only:
	$(DVIPDF) $(TARGET).dvi

pdf:
	make dvi
	$(DVIPDF) $(TARGET).dvi

bib:
	$(BIBTEX) $(TARGET)

extractbb:
	$(EXTRACTBB) $(FIGDIR)/*.pdf $(FIGDIR)/*.png

o:
ifeq ($(findstring hlab,$(HOME)),hlab)
	$(XDVI) -paper a4 $(TARGET).dvi &
else
	open $(TARGET).pdf
endif

clean:
	rm -f *.dvi *.aux *.bbl *.blg *.log *.lof *.lot *.toc
	rm -f $(FIGDIR)/*.xbb
	rm -f $(TARGET).pdf
	rm -f *~

c:
	rm -rf *~
	rm -rf .*~
	rm -rf \#*
