# Specify the Base Image that we want to use
FROM python:3.6 

# Commands to get the right configurations for python
RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-setuptools \
        python3-pip \
        python3-dev \
        python3-venv \
        git \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Send our container to a port
EXPOSE 2000

# Command we want the container to execute
CMD python -c "print('hello world')"