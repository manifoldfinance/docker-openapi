# Widdershins Docker Container

[![Docker Repository on Quay](https://quay.io/repository/verygoodsecurity/widdershins-docker/status "Docker Repository on Quay")](https://quay.io/repository/verygoodsecurity/widdershins-docker)

Convenience container for https://github.com/mermade/widdershins

### Build it

`docker build . -t widdershins`

### Use it

```
docker run -v `pwd`:/app -t widdershins \
  --search false \
  --language_tabs 'ruby:Ruby' 'python:Python' \
  --summary /app/petstore.yml \
  -o /app/petstore.md
```