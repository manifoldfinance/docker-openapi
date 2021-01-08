FROM library/node:15.2.0-alpine3.12

LABEL maintainer="Manifold Finance <ops@manifold.finance>"

RUN apk --no-cache add git \
	&& npm install -g mkdirp git+https://github.com/mermade/widdershins.git#v4.0.1 \
	&& apk del git

ENTRYPOINT ["/usr/local/bin/widdershins"]
