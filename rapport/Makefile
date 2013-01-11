SOURCES := rapport.tex
COMPILER := xelatex
OPTIONS := -shell-escape

all: rapport.pdf

rapport.pdf:
	$(COMPILER) $(OPTIONS) $(SOURCES);
	$(COMPILER) $(OPTIONS) $(SOURCES);

clean:
	rm -f *.log *.aux *.pdf