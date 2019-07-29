pdf:
	@docker run -v `pwd`/sample:/data yackx:pandoc pandoc -t beamer sample.md -o sample.pdf

html:
	@docker run -v `pwd`/sample:/data yackx:pandoc pandoc -f markdown -t html5 sample.md -o sample.html

clean:
	rm -f sample/sample.pdf sample/sample.html

default: html