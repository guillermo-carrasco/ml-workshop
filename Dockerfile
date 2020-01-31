# Base
FROM jupyter/scipy-notebook

ADD environment.yaml /tmp/environment.yaml

# Create a conda environment
RUN conda env update -f /tmp/environment.yaml

# Add data files and remove unnecessary directory
RUN rm -r /home/jovyan/work
ADD --chown=jovyan:users data /home/jovyan/data
ADD --chown=jovyan:users notebooks /home/jovyan/notebooks

# Add nltk data, this is to avoid having to configure the container to connect to the internet
RUN python -c "import nltk; nltk.download('stopwords')"