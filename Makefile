comment ?= "minor revision"

.PHONY: upload

upload:
	git add .
	git commit -m "$(comment)"
	git push -u origin main



