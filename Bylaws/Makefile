all : bylaws.pdf

%.pdf : %.tex
    pdflatex $<

%.pdf : %.rst
    pandoc -o $@ $< -Vgeometry=margin=1in
