NAME=215514_rafal_kolucki_inz

.PHONY: all

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	latexmk -xelatex $^

read: $(NAME).pdf
	xdg-open $^

clean:
	latexmk -c
	-rm $(NAME).pdf */*.aux $(NAME).bbl $(NAME).pre $(NAME).xdv
	-rm $(NAME).synctex.gz
