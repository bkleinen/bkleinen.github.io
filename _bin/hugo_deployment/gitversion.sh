echo "commit: $(git rev-parse HEAD | cut -c 1-8)" > hugo/data/gitinfo.yml
echo "tag:" $(git describe --tags) >> hugo/data/data.gitinfo.yml
