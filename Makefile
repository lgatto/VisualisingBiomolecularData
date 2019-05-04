all:
	make docs/index.html
	make code

docs/index.html: *Rmd
	Rscript -e "bookdown::render_book('index.Rmd')"

code:
	Rscript -e "sapply(list.files(pattern = 'Rmd'), knitr::purl)"

