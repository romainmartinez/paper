# Introduction
This repository is a skeleton to start a pandoc-based project.
It features a preamble, bibliography and renders `html`, `pdf` and `docx`.


Since `SVG` files are very popular and useful to academic writing ; this repo provide a modified version of [`pandoc-svg.py`](https://gist.github.com/jeromerobert/3996eca3acd12e4c3d40).
It requires `Inkscape`.

# Starting a new project
- Execute the following lines in your terminal:

```bash
git clone https://github.com/romainmartinez/paper.git
cd paper
rm -rf README.md .git .gitignore
```

- Each markdown file must be labeled as `{SECTION}_{SUBSECTION}_{DESCRIPTION}.md`

- Modify the `Makefile` for each new document:
  - set `OUTPUT_NAME`
  - set `PUBLISH_DIR` (_useful for Dropbox users_)
  - set `OUTPUT_DIR`
  
- Make sure your markdown files are **newline terminated**
- If you have installed pandocfilters in an python environment, make sur to run the `Makefile` with this environment activated

# Requirements
- [Pandoc](https://github.com/jgm/pandoc)
- [Pandoc-citeproc](https://github.com/jgm/pandoc-citeproc) (*usually included in pandoc*)
- [Pandoc-filters](https://github.com/jgm/pandocfilters)
- [Inkscape](https://inkscape.org/en/) if you use `SVG`

## Install on Ubuntu for pip users

```bash
sudo apt update && sudo apt upgrade
sudo apt install pandoc pandoc-citeproc inkscape
pip install pandocfilters # In your virtual environment
```

## Install on Ubuntu for conda users
```bash
sudo apt update && sudo apt upgrade
sudo apt install pandoc pandoc-citeproc inkscape
conda create -n ENV_NAME pandocfilters
```

## Install on Mac
```bash
brew install pandoc pandoc-citeproc homebrew/x11/inkscape
pip install pandocfilters # In your virtual environment
```

## Install on Windows
[Tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop#0)

# Credit
This repo is based on @jbn [paper](https://github.com/jbn/paper) repo.
