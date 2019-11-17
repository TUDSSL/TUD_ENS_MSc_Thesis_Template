# TU Delft ENS Group MSc Thesis Template

This is a official repository for [TU Delft Embedded Networked Systems Group](http://www.ens.ewi.tudelft.nl) MSc Thesis Template.

### How to use this template

Assuming you have LaTeX installed and any Unix-compatible system, simply type

```
make
```

This will compile the whole thesis (mege front pages with the core of the thesis and generate `thesis.pdf`). Makefile, which is part of this repository, specifies the following options in particular:

- `all`: calls this makefile `pdflatex` command
- `dvipdf`: calls this makefile `dvi` command and complies pdf file from dvi file
- `pdflatex`: complies `thesis.tex` with unix/linux `pdflatex` command
- `dvi`: complies `thesis.tex` with unix/linux `latex` command
- `spell`: run `aspell` command (linux spell checking command) over all `.tex` files
- `view`: calls this makefile `pdflatex` command and then GNOME Evince Document Viewer
- `clean`: removes all ancillary files from the `work` directory

### Structure of this folder

_Folders_:

- `bib`: folder with the bibliography file
- `chapters`: folder with core chapter `*.tex` files
- `template`: folder with this template `*.tex` template files
- `template-pics`: folder with this template `*.tex` images for front page (including [TU Delft ENS Logo](https://github.com/TUDSSL/TUD_ENS_Logo))
- `build`: folder for storing all `.aux`, `.log`, `.out` and `.toc` files

_Files_:

- `thesis.tex`: main `.tex` file
- `thesis.pdf`: compiled version of `thesis.tex`
- `Makefile`: makefile to compile `thesis.tex`

### History

This template is an adapted LaTeX thesis template of the old TU Delft Embedded Systems Group (see example [here](https://repository.tudelft.nl/islandora/object/uuid%3A6d5a3afd-1966-4357-b063-7a82c0fdb0ab)). That template was again adapted from the MSc thesis template of the [Parallel (and then Distributed) Systems group](https://www.tudelft.nl/ewi/over-de-faculteit/afdelingen/software-technology/distributed-systems/) at TU Delft.

### Copyright

Copyright (C) 2019 TU Delft Embedded and Networked Systems Group.

MIT Licence. See [License](https://github.com/TUDSSL/TUD_ENS_MSc_Thesis_Template/blob/master/LICENSE) file for details.
