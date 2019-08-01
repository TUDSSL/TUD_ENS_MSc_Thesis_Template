# TU Delft ENS Group MSc Thesis Template

This is a official repository for TU Delft Embedded Networked Systems Group MSc Thesis Template.

### History

This template is an adapted LaTeX thesis template of the old TU Delft Embedded Systems Group (see example [here](https://repository.tudelft.nl/islandora/object/uuid%3A6d5a3afd-1966-4357-b063-7a82c0fdb0ab)). That template was again adapted from the MSc thesi template of the [Parallel (and then Distributed) Systems group](https://www.tudelft.nl/ewi/over-de-faculteit/afdelingen/software-technology/distributed-systems/) at TU Delft.

### Use

- `make`: compiles the whole thesis

### Structure of this folder

_Folders_:

- `bib`: folder with the bibliography file
- `chapters`: folder with core chapter `*.tex` files
- `template`: folder with this template `*.tex` template files
- `template-pics`: folder with this template `*.tex` images for front page (including [TU Delft ENS Logo](https://github.com/TUDSSL/TUD_ENS_Logo))
- `work`: folder for storing all `.aux`, `.log`, `.out` and `.toc` files (folder must exist, otherwise `make` will crash)

_Files_:

- `thesis.tex`: main `.tex` file
- `thesis.pdf`: compiled version of `thesis.tex`
- `Makefile`: makefile to compile `thesis.tex`

### Copyright

Copyright (C) 2019 TU Delft Embedded and Networked Systems Group.

MIT Licence. See [License.md](License.md) file for details.
