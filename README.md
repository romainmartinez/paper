# Introduction
This repository is a skeleton to start a pandoc-based project.
It features a preamble, bibliography and renders `html`, `pdf` and `docx`.

Since `SVG` files are very popular and useful to academic writing ; this repo provide a modified version of [`pandoc-svg.py`](https://gist.github.com/jeromerobert/3996eca3acd12e4c3d40).
It requires `Inkscape`.

# Starting a new project
1. Git clone with: `git clone https://github.com/romainmartinez/paper.git`
2. Update your `PROJECT_NAME` in the `Makefile`
3. Make sure to read the `Makefile` and run `make setup`

 # Usage
- run `make pdf`, `make html` or `make word` to produce the desired output
- Each markdown file must be labeled as `{SECTION}_{SUBSECTION}_{DESCRIPTION}.md`
- Make sure your markdown files are **newline terminated**
- If you have installed pandocfilters in an python environment, make sur to run the `Makefile` with this environment activated

# Requirements
- [Pandoc](https://github.com/jgm/pandoc)
- [Pandoc-citeproc](https://github.com/jgm/pandoc-citeproc) (*usually included in pandoc*)
- [Pandoc-filters](https://github.com/jgm/pandocfilters)
- [Inkscape](https://inkscape.org/en/) if you use `SVG`

# Credit
This repo is based on @jbn [paper](https://github.com/jbn/paper) repo and used the @Wandmalfarbe [latex theme](https://github.com/Wandmalfarbe/pandoc-latex-template)
