pdf:
	@echo 'Generating PDF'
	@docker run -v `pwd`/sample:/data yackx/pandoc pandoc -V theme:metropolis -t beamer --pdf-engine=xelatex sample.md -o sample.pdf

html:
	@echo 'Generating HTML'
	@docker run -v `pwd`/sample:/data yackx/pandoc pandoc -f markdown -t html5 sample.md -o sample.html

version:
	@docker run yackx/pandoc pandoc -v

clean:
	@echo 'Cleanup generated files'
	rm -f sample/sample.pdf sample/sample.html

all: html pdf

default: html