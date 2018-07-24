PROJECT_NAME=test
OUTPUT_DIR=outputs/

setup:
	@echo "Creating ${PROJECT_NAME}..."
	# Update your things
	sudo apt update && sudo apt upgrade

	# Install requirements
	sudo apt install pandoc pandoc-citeproc inkscape

	# Create conda env
	conda create -n ${PROJECT_NAME} pandocfilters

	# Download latex template
	curl https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex > eisvogel.tex

	# Delete useless files
	rm -rf README.md .git .gitignore LICENSE

	# create outputs dir
	mkdir ${OUTPUT_DIR}


.PHONY: html
html: *.md
	pandoc *.md --filter pandoc-citeproc --mathjax --include-in-header custom.css -s -o $(OUTPUT_DIR)$(PROJECT_NAME).html

.PHONY: pdf
pdf: *.md
	pandoc  *.md --filter=./pandoc-svg.py --filter pandoc-citeproc -s -o $(OUTPUT_DIR)$(PROJECT_NAME).pdf --template eisvogel.tex --listings

.PHONY: word
word: *.md
	pandoc  *.md --filter=./pandoc-svg.py --filter pandoc-citeproc -s -o $(OUTPUT_DIR)$(PROJECT_NAME).docx

