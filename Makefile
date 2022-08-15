all: example.html

example.html: example.qmd _extensions/social-embeds/*
	quarto render example.qmd

clean:
	-rm example.html
	-rm -r example_files
