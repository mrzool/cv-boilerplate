# CV/Résumé Boilerplate

This repository contains a modified version of Dario Taborelli's [cvtex](https://github.com/dartar/cvtex) template. The original is targeted to academics and scientist, while this one should be well suited for everyone else.

Since I find writing LaTeX tedious, I've ported the whole thing to [pandoc](http://pandoc.org/), abstracted the layout into a TeX file, and moved the content to a yaml file.

Take a look at [output.pdf](output.pdf) to see the final result.

## Dependencies

1. LaTeX with the following extra packages: `fontspec` `geometry` `multicol` `xunicode` `xltxtra` `marginnote` `sectsty` `ulem` `hyperref`
2. pandoc

To install LaTeX on Mac OS X, I recommend getting the smaller version BasicTeX from [here](https://tug.org/mactex/morepackages.html) and installing the additional packages with `tlmgr` afterwards. Same goes for Linux: install `texlive-base` with your package manager and add the needed additional packages later.

To install pandoc on Mac OS X, run `brew install pandoc`. To install it on Linux, refer to the [official docs](http://pandoc.org/installing.html).

## Getting started

Edit `content.yml` with your personal details, work experience, education, and desired settings. Run `make` to compile the PDF. Tweak on `template.tex` until you're satisfied with the result.

Refer to [pandoc's documentation](http://pandoc.org/demo/example9/templates.html) to learn more about how templates work.

Note: this template needs to be compiled with XeTeX.

## Available settings

- **`mainfont`**: Hoefler Text is the default, but every font installed in your system should work.
- **`fontsize`**: Possible values are 10pt, 11pt and 12pt.
- **`geometry`**: A string that sets the margins. Check out [this page](https://www.sharelatex.com/learn/Page_size_and_margins) to learn how the package `geometry` works.

## Recommended reading

- [Résumé advices](http://practicaltypography.com/resumes.html) from Butterick's Practical Typography 
- [Why I do my résumé in LaTeX](http://www.toofishes.net/blog/why-i-do-my-resume-latex/)
- [What are the benefits of writing resumes in TeX/LaTeX?](http://tex.stackexchange.com/questions/11955/what-are-the-benefits-of-writing-resumes-in-tex-latex)
- [Typesetting your academic CV in LaTeX](http://nitens.org/taraborelli/cvtex) 

## License

[CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)
