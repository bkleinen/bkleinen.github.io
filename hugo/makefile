
hugo:
	open http://localhost:4242
	hugo -D -p 4242 server

version:
	echo "commit: $(git log --pretty=format:'%h' -n 1)" > data/git-commit.yml
	git add data/git-commit.yml

deploy:
	git push origin main
