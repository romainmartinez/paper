# Introduction
This repository is a skeleton to start a pandoc-based project.
It features a preamble, bibliography and renders `html`, `pdf` and `docx`.


`SVG` files are very popular and useful to academic writing ; that's why this repo provide a modified version of [`pandoc-svg.py`](https://gist.github.com/jeromerobert/3996eca3acd12e4c3d40).
It requires `Inkscape`.

# Starting a new project
- Execute the following lines in your terminal:

```bash
git clone https://github.com/romainmartinez/paper.git
cd paper
rm README.md
rm -rf .git/
```

- Each markdown file must be labeled as `{SECTION}_{SUBSECTION}_{DESCRIPTION}.md`

- Modify the `Makefile` for each new document:
  - set `OUTPUT_NAME`
  - set `PUBLISH_DIR` (_useful forr Dropbox users_)
  - set `OUTPUT_DIR`
  
- Make sure your markdown files are **newline terminated**

# Requirements
- [Pandoc](https://github.com/jgm/pandoc)
- [Pandoc-citeproc](https://github.com/jgm/pandoc-citeproc) (*usually included in pandoc*)
- [Pandoc-filters](https://github.com/jgm/pandocfilters)
- [Inkscape](https://inkscape.org/en/) if you use `SVG`

# Credit
This repo is based on @jbn [paper](https://github.com/jbn/paper) repo.
