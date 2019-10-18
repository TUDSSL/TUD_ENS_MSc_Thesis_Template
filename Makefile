TARGET=thesis#specify name of refence file holding thesis
TEXFILES=$(wildcard *.tex)


BUILD_DIR 	:= build

TEMPLATE_FIG_DIR := template-pics/tud-ens-logo-tikz
TEMPLATE_FIGS    := $(wildcard $(TEMPLATE_FIG_DIR)/*.tex)
TEMPLATE_FIGS_PDF 	:= $(TEMPLATE_FIGS:.tex=.pdf)

LATEXPATH=.:./template:$(TEMPLATE_FIG_DIR):./chapters:${TEXINPUTS}
LATEXOPTIONS= --output-directory=./$(BUILD_DIR) --shell-escape

all:    pdflatex
 
dvipdf: dvi
	@dvipdf $(BUILD_DIR)/${TARGET}.dvi

pdflatex: dir $(TEMPLATE_FIGS_PDF)
	@TEXINPUTS=${LATEXPATH} pdflatex ${LATEXOPTIONS} ${TARGET}.tex
	@if grep -q '\\citation' $(BUILD_DIR)/*.aux ; then cd ./$(BUILD_DIR); bibtex ${TARGET}; cd .. ; fi
	@TEXINPUTS=${LATEXPATH} pdflatex ${LATEXOPTIONS} ${TARGET}.tex
	@TEXINPUTS=${LATEXPATH} pdflatex ${LATEXOPTIONS} ${TARGET}.tex
	@TEXINPUTS=${LATEXPATH} pdflatex ${LATEXOPTIONS} ${TARGET}.tex
	@mv $(BUILD_DIR)/${TARGET}.pdf .
 
spell: *.tex
	@for file in $?; do aspell --lang=en_GB --mode=tex -c $$file; done
 
dir:
	@mkdir -p $(BUILD_DIR)

$(TEMPLATE_FIG_DIR)/%.pdf: $(TEMPLATE_FIG_DIR)/%.tex
	@TEXINPUTS=${LATEXPATH} pdflatex ${LATEXOPTIONS} $<
	mv $(BUILD_DIR)/$*.pdf $@

dvi:
	@TEXINPUTS=${LATEXPATH} latex ${LATEXOPTIONS} ${TARGET}.tex
	@if grep -q '\\citation' $(BUILD_DIR)/*.aux ; then cd ./$(BUILD_DIR); bibtex ${TARGET}; cd .. ; fi
	@TEXINPUTS=${LATEXPATH} latex ${LATEXOPTIONS} ${TARGET}.tex
	@TEXINPUTS=${LATEXPATH} latex ${LATEXOPTIONS} ${TARGET}.tex
	@TEXINPUTS=${LATEXPATH} latex ${LATEXOPTIONS} ${TARGET}.tex

view: pdflatex
	evince ${TARGET}.pdf
 
clean:
	@-rm -f $(BUILD_DIR)/*.aux $(BUILD_DIR)/${TARGET}.log $(BUILD_DIR)/*.bak $(BUILD_DIR)/${TARGET}.dvi $(BUILD_DIR)/${TARGET}.pdf ${TARGET}.pdf $(BUILD_DIR)/${TARGET}.toc $(BUILD_DIR)/${TARGET}.bbl $(BUILD_DIR)/${TARGET}.blg $(BUILD_DIR)/${TARGET}.out ${TARGET}.toc ${TARGET}.bbl ${TARGET}.blg ${TARGET}.out ${TARGET}.log
 
.PHONY: clean,spell,dvi,pdf,view
