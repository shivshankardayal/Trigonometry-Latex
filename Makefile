SRCS = *.tex
trigonometry.pdf: $(SRCS)
	mkdir -p build
	lualatex --shell-escape -output-directory=build "An Angle in Trigonometry.tex"
