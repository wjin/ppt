SRC = $(wildcard *.md)

PDF=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)

all: clean $(PDF) $(HTML)

pdf: clean $(PDF)
html: clean $(HTML)

%.html: %.md
	pandoc $< -o slides.html -t dzslides -s

%.pdf: %.md
	pandoc $< -o slides.pdf -t beamer

clean:
	rm -f *.html *.pdf
