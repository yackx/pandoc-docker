# pandoc-docker

**A docker image file for pandoc with beamer support**

Write presentation slides in markdown and convert them to HTML or PDF with pandoc and beamer.

The pandoc toolchain including **beamer** is heavyweight and can be cumbersome to install on non GNU/Linux systems. This Docker image should make things simpler.

It is also suited for **book editing**, although it contains extra dependencies for slide presentations.

## Install

    docker build -t yackx/pandoc .

*Remark*: this will take some and generate an large image (around 3Gb).

## Run

A `Makefile` will read the [sample.md](sample/sample.md) source and convert it to different output formats.

Generate a [sample.pdf](sample/sample.pdf)

    make slide-pdf

Generate a [slide.html](sample/slide.html) (several themes available)

    make slide-html

Generate a [manual.pdf](sample/manual.pdf)

    make book-pdf

Cleanup

    make clean

If don't have have `make` installed or working, you can simply copy-paste the commands from [Makefile](Makefile).

## Install

Create a file `/usr/local/bin/pandoc`

```bash
docker run -v `pwd`:/data yackx/pandoc pandoc $@
```

## XeTeX

[XeTeX](https://en.wikipedia.org/wiki/XeTeX) is a TeX typesetting engine using Unicode and supporting modern font technologies. It is included in the docker image and the `Makefile` PDF generation command contains a switch `--pdf-engine=xelatex` to invoke it.

For simpler slide presentations, you might want to remove that extra-dependency from the docker image and remove to switch in order to gain about 2Gb of image size.

## See also

* [Creating Presentations Using Markdown and Pandoc](https://www.youtube.com/watch?v=e-HqKSBZOXo)
* [Pandoc - Styling the slides](https://pandoc.org/MANUAL.html#styling-the-slides)
* [blang/latex-docker](https://github.com/blang/latex-docker)
* [jagregory/pandoc-docker](https://github.com/jagregory/pandoc-docker)

## Credits

* [Ladybug image](https://www.freeimages.com/photo/ladybird-1367182)

## License

GNU General Public License v3.0. Read [LICENSE.txt](LICENSE.txt)
