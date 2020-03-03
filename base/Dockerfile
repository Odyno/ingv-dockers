FROM jupyter/all-spark-notebook:2fd856878b83

USER root

RUN mkdir -p /home/$NB_USER/conda-envs
ADD .condarc /home/$NB_USER/.condarc

RUN conda config --add channels conda-forge \
    && \
    conda install --quiet --yes \
    'obspy' \
    'basemap' \
    'nb_conda_kernels' \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER $NB_UID
