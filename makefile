TEX = pandoc
src = template.tex details.yml
LFLAGS = --latex-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(LFLAGS)

.PHONY: clean
clean :
	rm output.pdf
