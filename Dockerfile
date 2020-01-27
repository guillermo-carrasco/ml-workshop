# Base
FROM continuumio/miniconda3

ADD environment.yaml /tmp/environment.yaml
ADD data /home/data
ADD notebooks /home/notebooks

# Create a conda environment
RUN conda env create -f /tmp/environment.yaml

# Activate the environment
RUN echo "source activate workshop" > ~/.bashrc

ENV PATH /opt/conda/envs/env/bin:$PATH

# Start a Jupyter notebook
WORKDIR /home
CMD ["/opt/conda/envs/workshop/bin/jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]