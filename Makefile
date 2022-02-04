PROJECT_NAME="assignment"
TARGET_FILE_NAME=main_layout
LATEX_PROCESSOR=pdflatex
LATEX_FLAGS=-shell-escape -interaction=nonstopmode --jobname=$(PROJECT_NAME) $(TARGET_FILE_NAME).tex
PDF_LATEX_COMMAND=$(LATEX_PROCESSOR) $(LATEX_FLAGS)

content:
	$(PDF_LATEX_COMMAND) && $(PDF_LATEX_COMMAND)

references:
	bibtex $(PROJECT_NAME)
	$(PDF_LATEX_COMMAND)
	$(PDF_LATEX_COMMAND)

clean:
	rm -f *.aux *.log *.out *.pdf *.toc
	rm -rf _minted-$(PROJECT_NAME)