BASE = slide
PDF = $(BASE).pdf
TEX = $(BASE).tex
BIB = $(BASE).bib

STY_FILES := $(wildcard *.sty)

.PHONY: clean

all: $(PDF)

$(PDF): $(STY_SRCS) $(TEX) $(BIB)
	latexmk $(BASE)

view: $(PDF)
	latexmk -pv

clean:
	@rm -f $(PDF)
	@git clean -xfd

