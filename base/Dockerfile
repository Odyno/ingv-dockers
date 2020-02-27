FROM jupyter/all-spark-notebook:2fd856878b83

USER root

RUN apt-get update \
    && apt-get install -y gnupg2 \
    && echo 'deb http://deb.obspy.org bionic main' >> /etc/apt/sources.list \
    && curl -fsSL https://raw.githubusercontent.com/obspy/obspy/master/misc/debian/public.key | apt-key add -  \
    && apt-get update

RUN apt-get install -y python-obspy python3-obspy  \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID


ADD .condarc $HOME/.condarc

RUN conda install --quiet --yes \
    'notebook_env' \
    'nb_conda_kernels' \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

