NAME := joe-cv
LATEX := latex
DVIPS := dvips
PS2PDF := ps2pdf

all: $(NAME)

$(NAME): $(NAME).pdf

$(NAME).pdf: $(NAME).ps
	$(PS2PDF) $(NAME).ps $(NAME).pdf

$(NAME).ps: $(NAME).dvi
	$(DVIPS) $(NAME).dvi

$(NAME).dvi: $(NAME).tex
	$(LATEX) $(NAME).tex

clean:
	rm -f $(NAME).aux $(NAME).dvi $(NAME).log $(NAME).ps $(NAME).out $(NAME).tex.backup

distclean: clean
	rm -f $(NAME).pdf

rebuild: distclean all

.PHONY: clean distclean
