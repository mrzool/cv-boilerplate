# CV/Résumé Boilerplate

This little project should ease the pain of building and maintaining a CV or résumé using LaTeX.

Since I find writing LaTeX code tedious and error-prone, I keep the actual content of the CV in a yaml file for easier editing and updating, while the layout lives in a separate TeX file. The amazing [pandoc](http://pandoc.org/) takes then care of wrapping everything together and compiling the PDF through LaTeX.

This repository contains a modified version of Dario Taraborelli's [cvtex](https://github.com/dartar/cvtex) template. The original is targeted to academics and scientist, while this one should be flexible enough for everyone.

Take a look at [output.pdf](output.pdf) to see the final result.

![preview](preview.jpg)

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
- **`fontsize`**: Possible values here are 10pt, 11pt and 12pt.
- **`geometry`**: This string sets margins and other parameters. Check out [this page](https://www.sharelatex.com/learn/Page_size_and_margins) to learn how the `geometry` package works.

## Recommended reading

- [Why I do my résumé in LaTeX](http://www.toofishes.net/blog/why-i-do-my-resume-latex/) by Dan McGee
- [What are the benefits of writing resumes in TeX/LaTeX?](http://tex.stackexchange.com/questions/11955/what-are-the-benefits-of-writing-resumes-in-tex-latex) on TeX Stack Exchange
- [Typesetting your academic CV in LaTeX](http://nitens.org/taraborelli/cvtex) by Dario Taraborelli
- [Résumé advices](http://practicaltypography.com/resumes.html) from Butterick's Practical Typography 

## License

[CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)
