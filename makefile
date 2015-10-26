output.pdf : template.tex content.yml
	pandoc $(filter-out $<,$^ ) -o $@ --latex-engine=xelatex --template=$<

clean :
	rm output.pdf
