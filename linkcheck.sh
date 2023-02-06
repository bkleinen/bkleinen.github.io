#!/bin/bash -x
ps -ax | grep hugo
echo "Starting Hugo server..."
# git config --global --add safe.directory $GITHUB_WORKSPACE
#
# HUGO_SOURCE=hugo
#
# cd $GITHUB_WORKSPACE
hugo server --source hugo --baseUrl http://host.docker.internal:1415 --port 1415 > /tmp/hugo.output &
HUGO_PID=$!
HUGO_PID2=$?
sleep 1

# Wait for Hugo to finish the startup process
# from https://stackoverflow.com/questions/21475639/wait-until-service-starts-in-bash-script
# ./server > /tmp/server-log.txt &
sleep 1
while ! grep -m1 'Press Ctrl+C to stop' < /tmp/hugo.output; do
    sleep 1
done
echo "Hugo has started"
ps -ax | grep hugo

#docker run --rm tennox/linkcheck --external host.docker.internal:1415 && \
# docker run --network host --rm tennox/linkcheck -v "$(pwd)/:/skipfiles/" --skip-file /skipfiles/linkcheck-skipfile.txt $1 host.docker.internal:1415
# docker run --network host --rm tennox/linkcheck -v "$(pwd)/:/skipfiles/" --skip-file /skipfiles/linkcheck-skipfile.txt $1 host.docker.internal:1415
docker run --network host --rm tennox/linkcheck   $1 host.docker.internal:1415
LINK_CHECKER_RESULT=$?

# SKIP_FILE=$1
# SKIP_FILE_OPTION=""
# test -f "$SKIP_FILE" && SKIP_FILE_OPTION="--skip-file ${GITHUB_WORKSPACE}/${SKIP_FILE}"
#
# CHECK_ANCHORS=$2
# CHECK_ANCHORS_OPTION=""
# test "$CHECK_ANCHORS" = "false" && CHECK_ANCHORS_OPTION="--no-check-anchors"
#
# linkcheck http://localhost:1313 $SKIP_FILE_OPTION $CHECK_ANCHORS_OPTION


# host.docker.internal:1415

kill $HUGO_PID
ps -ax | grep hugo

exit $LINK_CHECKER_RESULT
