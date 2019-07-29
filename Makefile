pdf:
	@echo 'Generating PDF'
	@docker run -v `pwd`/sample:/data yackx:pandoc pandoc -t beamer sample.md -o sample.pdf

html:
	@echo 'Generating HTML'
	@docker run -v `pwd`/sample:/data yackx:pandoc pandoc -f markdown -t html5 sample.md -o sample.html

clean:
	@echo 'Cleanup generated files'
	rm -f sample/sample.pdf sample/sample.html

all: html pdf

default: html