# See demos and options
# https://pandoc.org/demos.html

slide-pdf:
	@echo 'Generating PDF from slides'
	@docker run -v `pwd`/sample:/data yackx/pandoc pandoc -V theme:metropolis -t beamer --pdf-engine=xelatex --slide-level=2 sample.md -o sample.pdf

basic-html:
	@echo 'Generating basic HTML'
	@docker run -v `pwd`/sample:/data yackx/pandoc pandoc -f markdown -t html5 sample.md -o sample.html

slide-html:
	@echo 'Generating slide HTML'
	@docker run -v `pwd`/sample:/data yackx/pandoc pandoc -f markdown -s --mathjax -i -t revealjs sample.md -o slide.html
	# see also dzslides slidy

version:
	@docker run yackx/pandoc pandoc -v

clean:
	@echo 'Cleanup generated files'
	rm -f sample/sample.pdf sample/sample.html sample/slide.hml

default: slide-html