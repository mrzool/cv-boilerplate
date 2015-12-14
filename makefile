src = template.tex details.yml
LFLAGS = --latex-engine=xelatex

output.pdf : $(src)
	pandoc $(filter-out $<,$^ ) -o $@ $(LFLAGS) --template=$<

.PHONY: clean
clean :
	rm output.pdf
