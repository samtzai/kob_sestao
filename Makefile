ENGINE ?= xelatex
FLAGS  = -interaction=nonstopmode -halt-on-error -file-line-error

APT_PACKAGES = texlive-xetex texlive-latex-extra texlive-fonts-recommended texlive-lang-spanish latexmk

all:
	$(ENGINE) $(FLAGS) main.tex
	$(ENGINE) $(FLAGS) main.tex
	$(ENGINE) $(FLAGS) ficha_personaje.tex
	$(ENGINE) $(FLAGS) ficha_personaje.tex
	$(ENGINE) $(FLAGS) ficha_alex_potenciado.tex
	$(ENGINE) $(FLAGS) ficha_alex_potenciado.tex

install:
	sudo apt-get update
	sudo apt-get install -y $(APT_PACKAGES)

clean:
	rm -f main.aux main.log main.out main.toc main.xdv main.fls main.fdb_latexmk main.synctex.gz
	rm -f ficha_personaje.aux ficha_personaje.log ficha_personaje.out ficha_personaje.xdv ficha_personaje.fls ficha_personaje.fdb_latexmk ficha_personaje.synctex.gz
	rm -f ficha_alex_potenciado.aux ficha_alex_potenciado.log ficha_alex_potenciado.out ficha_alex_potenciado.xdv ficha_alex_potenciado.fls ficha_alex_potenciado.fdb_latexmk ficha_alex_potenciado.synctex.gz

.PHONY: all install clean
