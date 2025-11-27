FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-aarch64.lock /tmp/conda-linux-aarch64.lock
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba create --name lab-tues --file /tmp/conda-linux-64.lock && \
	mamba clean --all -f -y
