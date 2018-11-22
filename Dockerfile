FROM autocaseimpact/alpine-uwsgi-postgresql:python-2.7

RUN apk upgrade --update-cache --available

# System dependencies
RUN apk add ca-certificates gcc g++ curl openblas-dev

# Create link to file for SciPy
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install --no-cache-dir numpy scipy

RUN apk add chromium
WORKDIR /usr/src/app
ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
