output.pdf : template.tex ../cv-data/content.yml
	pandoc $(filter-out $<,$^ ) -o $@ --latex-engine=xelatex --template=$<

clean :
	rm output.pdf
