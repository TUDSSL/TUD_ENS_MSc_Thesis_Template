# TU Delft ES Group MSc Thesis Template

This is a official repository for [TU Delft Embedded Systems Group](https://www.es.ewi.tudelft.nl) MSc Thesis Template.

### How to use this template

Assuming you have LaTeX installed and any Unix-compatible system, simply type

```
make
```

This will compile the whole thesis (merge front pages with the core of the thesis and generate `thesis.pdf`). Makefile, which is part of this repository, specifies the following options. In particular:

- `all`: calls this makefile `pdflatex` command
- `dvipdf`: calls this makefile `dvi` command and complies pdf file from dvi file
- `pdflatex`: complies `thesis.tex` with unix/linux `pdflatex` command
- `dvi`: complies `thesis.tex` with unix/linux `latex` command
- `spell`: run `aspell` command (linux spell checking command) over all `.tex` files
- `view`: calls this makefile `pdflatex` command and then [GNOME Evince Document Viewer](https://help.gnome.org/users/evince/stable/)
- `clean`: removes all ancillary files from the `work` directory

### Using this template with Overleaf

To use this template with overleaf fork this repository and import it to [https://www.overleaf.com](Overleaf). If you face issues with rendering the ES logo, compile the tud-ens-logo.tex file and place the generated image (.pdf) in the required location (template-pics/tud-ens-logo-tikz). Make sure you start editing with the `thesis.tex` file with your name, thesis title etc. 

### Structure of this folder

_Folders_:

- `bib`: folder with the bibliography file
- `chapters`: folder with core chapter `*.tex` files
- `template`: folder with this template `*.tex` template files
- `template-pics`: folder with this template `*.tex` images for front page TU Delft ES group logo
- `build`: folder for storing all `.aux`, `.log`, `.out` and `.toc` files

_Files_:

- `thesis.tex`: main `.tex` file
- `Makefile`: makefile to compile `thesis.tex`

### History

This template is an adapted LaTeX thesis template of the old TU Delft Embedded Systems Group (see example [here](https://repository.tudelft.nl/islandora/object/uuid%3A6d5a3afd-1966-4357-b063-7a82c0fdb0ab)). That template was again adapted from the MSc thesis template of the [Distributed (and then Parallel) Systems group](https://www.tudelft.nl/ewi/over-de-faculteit/afdelingen/software-technology/distributed-systems/) at TU Delft.

### Copyright

Copyright (C) 2023 TU Delft Embedded Systems Group.

MIT Licence. See [License](https://github.com/TUDSSL/TUD_ENS_MSc_Thesis_Template/blob/master/LICENSE) file for details.
