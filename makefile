book:
	nix-shell --run "latexmk -pdf -pdflatex=\"pdflatex --shell-escape %O %S\" -pvc -gg -f book.tex"

run: book
	qpdfview book.pdf
