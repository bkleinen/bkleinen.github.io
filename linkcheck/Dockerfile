FROM tennox/linkcheck:alpine

FROM dart

RUN dart pub global activate linkcheck
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
