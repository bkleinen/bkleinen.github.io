deploy:
	git add .
	git commit -m "$m"
	_bin/hugo_deployment/gitautotag.sh --minor
	export TAG="$(git describe --abbrev=0 --tags)"
	git tag "${TAG}"
	git push origin hugo_migration
	git push origin "${TAG}"
pl:
	git push origin `git describe --abbrev=0 --tags`
