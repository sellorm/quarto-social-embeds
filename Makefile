all: help

site: *.qmd examples/*.qmd _extensions/social-embeds/* ## Build the site
	quarto render

example: example.qmd _extensions/social-embeds/* ## Build the example page
	quarto render example.qmd

serve: ## Preview the Quarto site in a browser
	quarto preview

help:  ## Show this help
    @grep -E '^[0-9a-zA-Z_-]+:.*?##.*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?##"; OFS="\t\t"}; {printf "\033[36m%-30s\033[0m %s\n", $$1, ($$2==""?"":$$2)}'

clean: ## Tidy up
	-rm example.html
	-rm -r example_files
	-rm -r _site

.PHONY: all site example serve help clean
