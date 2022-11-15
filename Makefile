CC = pandoc
FLAGS = --from=markdown \
		--to=pdf \
		--pdf-engine=/Library/TeX/texbin/xelatex \
		--table-of-contents \
		--toc-depth=5 \
		--number-sections \
		--metadata-file=./build/metadata.yaml \
		--metadata date="`date -u '+%d %B %Y'`" \
		-V geometry:"top=2cm, bottom=2cm, left=3cm, right=3cm" \
		--highlight-style=zenburn \
		-V fontsize=12pt \
		-V monofont="Fira Code" \
		-V colorlinks \
		-V linkcolor=red \
#		-V urlcolor=NavyBlue \
#		-V toccolor=red \
#		-V mainfont="Calibri" \

SOURCE = ./src/*.md
OUTPUT = userguide.pdf

all:
	$(CC) $(SOURCE) $(FLAGS) --output=$(OUTPUT)
