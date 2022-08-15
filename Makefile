NAME=215514_rafal_kolucki_inz
LATEXMK=latexmk -xelatex

.PHONY: all

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK) $^

preview: $(NAME).tex
	$(LATEXMK) -pvc $^

read: $(NAME).pdf
	xdg-open $^

clean:
	latexmk -c
	-rm $(NAME).pdf */*.aux $(NAME).bbl $(NAME).pre $(NAME).xdv
	-rm $(NAME).synctex.gz
