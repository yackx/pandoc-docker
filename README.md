# pandoc-docker

**A simple docker image file for pandoc beamer pdf**

Conveniently write presentations slides with markdown and convert them to HTML or PDF with pandoc and beamer.

The installation is heavyweight and can be cumbersome on non GNU/Linux systems. This Docker image should make things simpler.

## Install

    docker build -f Dockerfile -t yackx:pandoc .

*Remark*: this will generate a rather large image (above 3Gb).

## Run

A `Makefile` will read the [sample.md](sample/sample.md) source and convert it to different output formats.

Generate a [sample.pdf](sample/sample.pdf):

    make pdf

Generate a [sample.html](sample/sample.html):

    make html

Cleanup:

    make clean

If don't have have `make` installed or working, you can simply copy-paste the commands from [Makefile](Makefile).

## See also

* [Creating Presentations Using Markdown and Pandoc](https://www.youtube.com/watch?v=e-HqKSBZOXo)
* [Pandoc - Styling the slides](https://pandoc.org/MANUAL.html#styling-the-slides)
* [blang/latex-docker](https://github.com/blang/latex-docker)
* [jagregory/pandoc-docker](https://github.com/jagregory/pandoc-docker)

## Credits

* [Ladybug image](https://www.freeimages.com/photo/ladybird-1367182)

## License

GNU General Public License v3.0. Read [LICENSE.txt](LICENSE.txt)
