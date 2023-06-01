IMAGE = yackx/pandoc

all: book-pdf

book-pdf:
	@echo 'Generating PDF with template (book)'
	@docker run -v `pwd`:/data  $(IMAGE) pdflatex -N main.tex --pdf-engine=xelatex
