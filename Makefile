.PHONY: upload

upload:
	git add .
	git commit -m "regular update"
	git push -u origin main

