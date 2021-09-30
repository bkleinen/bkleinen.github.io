echo "commit: $(git rev-parse HEAD | cut -c 1-8)" > hugo/data/gitinfo.yml
echo "tag:" $(git describe --tags) >> hugo/data/gitinfo.yml
echo "ref:" $1 >> hugo/data/gitinfo.yml
echo "sha:" $2 >> hugo/data/gitinfo.yml
echo "workflow:" $3 >> hugo/data/gitinfo.yml
