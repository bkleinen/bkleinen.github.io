echo "commit: $(git rev-parse HEAD | cut -c 1-8)" > data/gitinfo.yml
echo "tag:" $(git describe --tags) >> data/gitinfo.yml
echo "ref:" $1 >> data/gitinfo.yml
echo "sha:" $2 >> data/gitinfo.yml
echo "workflow:" $3 >> data/gitinfo.yml
