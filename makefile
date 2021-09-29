c:
	git add .
	git commit -m "$m"
deploy:
	git push origin hugo_migration
	new_tag = $(shell _bin/hugo_deployment/gitautotag.sh --minor)
	git push origin $(new_tag)
	git push origin `git describe --abbrev=0 --tags`
