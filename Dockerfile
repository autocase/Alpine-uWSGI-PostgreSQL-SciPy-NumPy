FROM autocaseimpact/alpine-uwsgi-postgresql:latest

RUN apk upgrade --update-cache --available

# System dependencies
RUN apk add ca-certificates gcc g++ curl openblas-dev

# Create link to file for SciPy
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install --no-cache-dir numpy scipy
