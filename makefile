c:
	git add .
	git commit -m "$m"
deploy:
	git push origin main
	new_tag := $(shell _bin/hugo_deployment/gitautotag.sh --minor)
	git push origin $(new_tag)
