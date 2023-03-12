SRCS = *.tex
trigonometry.pdf: $(SRCS)
	mkdir -p build
	xelatex --shell-escape -output-directory=build trigonometry.tex
