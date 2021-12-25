# See demos and more options
# https://pandoc.org/demos.html

IMAGE = yackx/pandoc

all: slide-pdf book-pdf basic-html slide-html

slide-pdf:
	@echo 'Generating PDF from slides'
	@docker run -v `pwd`/sample:/data $(IMAGE) pandoc -V theme:metropolis -t beamer --pdf-engine=xelatex --slide-level=2 sample.md -o sample.pdf

book-pdf:
	@echo 'Generating PDF with template (book)'
	@docker run -v `pwd`/sample:/data  $(IMAGE) pandoc -N --template=template.tex --variable fontsize=12pt --variable version=2.0 MANUAL.txt --pdf-engine=xelatex --toc -o manual.pdf
	# also nice results with
	# --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo"
	# but requires additional fonts

basic-html:
	@echo 'Generating basic HTML'
	@docker run -v `pwd`/sample:/data $(IMAGE) pandoc -f markdown -t html5 sample.md -o sample.html

slide-html:
	@echo 'Generating slide HTML'
	@docker run -v `pwd`/sample:/data  $(IMAGE) pandoc -f markdown -s --mathjax -i -t revealjs sample.md -o slide.html
	# see also dzslides slidy

version:
	@docker run  $(IMAGE) pandoc -v

clean:
	@echo 'Cleanup generated files'
	rm -f sample/sample.pdf sample/sample.html sample/slide.hml sample/manual.pdf

default: slide-html
