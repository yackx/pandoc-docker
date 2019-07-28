# pandoc-docker

**A simple docker image file for pandoc beamer pdf**

Conveniently write presentations slides with markdown and convert them to HTML or PDF with pandoc and beamer.

The installation is heavyweight and can be cumbersome on non GNU/Linux systems. This Docker image should make things simpler.

## Install

    docker build -f Dockerfile -t yackx:pandoc .

*Remark*: this will generate a rather large image (above 3Gb).

## Run

From the [sample.md](sample/sample.md) source:

Generate a [sample.pdf](sample/sample.pdf):

    docker run -v `pwd`/sample:/data yackx:pandoc pandoc -t beamer sample.md -o sample.pdf

Generate a [sample.html](sample/sample.html):

    docker run -v `pwd`/sample:/data yackx:pandoc pandoc -f markdown -t html5 sample.md -o sample.html

## See also

* [Creating Presentations Using Markdown and Pandoc](https://www.youtube.com/watch?v=e-HqKSBZOXo)
* [Pandoc - Styling the slides](https://pandoc.org/MANUAL.html#styling-the-slides)
* [blang/latex-docker](https://github.com/blang/latex-docker)
* [jagregory/pandoc-docker](https://github.com/jagregory/pandoc-docker)

## Credits

* [Ladybug image](https://www.freeimages.com/photo/ladybird-1367182)

## License

GNU General Public License v3.0. Read [LICENSE.txt](LICENSE.txt)
