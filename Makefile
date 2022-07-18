CC = pandoc
FLAGS = --pdf-engine=xelatex

SOURCE = userguide.md
OUTPUT = userguide.pdf

build:
	$(CC) $(SOURCE) $(FLAGS) -o $(OUTPUT)
