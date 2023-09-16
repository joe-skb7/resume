NAME := resume

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex images/photo.eps
	@rubber -m xelatex -W all $(NAME).tex

clean:
	@rm -f $(NAME).aux $(NAME).log $(NAME).out $(NAME).rubbercache

distclean: clean
	@rm -f $(NAME).pdf

.PHONY: clean distclean
