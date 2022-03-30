NAME=215514_rafal_kolucki_inz

LATEX=xelatex -shell-escape -synctex=1 -interaction=nonstopmode
BIBTEX=bibtex

.PHONY: all

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEX) $^
	$(BIBTEX) $(patsubst %.tex,%.aux,$^)
	$(LATEX) $^
	$(LATEX) $^

read: $(NAME).pdf
	xdg-open $^

clean:
	rm $(NAME).pdf */*.aux $(NAME).toc $(NAME).synctex.gz $(NAME).bbl $(NAME).blg $(NAME).log $(NAME).pre texput.log
