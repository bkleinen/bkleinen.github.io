hugo --source hugo  --minify --environment staging --baseUrl http://host.docker.internal:1313 --port 1313 server | tee /tmp/hugo.output &
HUGO_PID=$!
sleep 1
tail -f /tmp/hugo.output | timeout 120 grep -qe 'Press Ctrl+C to stop'
echo "Hugo has started"
docker run --rm tennox/linkcheck localhost:1313
docker run --rm tennox/linkcheck host.docker.internal:1313

curl http://localhost:1313
