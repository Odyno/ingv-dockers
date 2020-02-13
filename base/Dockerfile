
FROM jupyter/all-spark-notebook:2fd856878b83

USER root

RUN echo 'deb http://deb.obspy.org bionic main' > /etc/apt/sources.list && \
    wget --quiet -O - https://raw.githubusercontent.com/obspy/obspy/master/misc/debian/public.key | sudo apt-key add -

RUN apt-get update \
    && apt-get install -y python-obspy python3-obspy  \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID