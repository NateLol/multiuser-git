m ?= "minor revision"

.PHONY: upload

upload:
	git add .
	git commit -m "$(m)"
	git push -u origin main



