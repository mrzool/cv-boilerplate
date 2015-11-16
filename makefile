output.pdf : template.tex details.yml
	pandoc $(filter-out $<,$^ ) -o $@ --latex-engine=xelatex --template=$<

clean :
	rm output.pdf
