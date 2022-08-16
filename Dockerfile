FROM php:7.1-cli
# 7.4 breaks regexp in php dom parser -> pdf looks ugly
RUN apt-get update && apt-get install --no-install-recommends --yes wkhtmltopdf
WORKDIR /code
COPY . .
CMD ./build.sh