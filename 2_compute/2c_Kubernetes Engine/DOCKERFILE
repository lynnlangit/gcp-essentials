FROM google/cloud-sdk:295.0.0
	
# Tell gcloud to save state in /.config so it's easy to override as a mounted volume.
ENV HOME=/

# install python3 to make that also available - modified from https://tecadmin.net/install-python-3-7-on-ubuntu-linuxmint/
RUN apt-get install -y build-essential checkinstall \
    && apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
        tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev liblzma-dev\
    && cd /usr/bin \
    && apt-get install -y wget \
    && wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz \
    && tar xzf Python-3.7.4.tgz \
    && cd Python-3.7.4 \
    && ./configure --enable-optimizations \
    && make altinstall \
    && update-alternatives --install /usr/bin/python3 python3 /usr/bin/Python-3.7.4/python 1 

# install pip3   
RUN rm /usr/bin/lsb_release \ 
    && apt-get update -y \
    && apt-get install python3-pip idle3 -y \ 
    && python3 -m pip install --no-cache-dir --upgrade pip

# install python packages
RUN python3 -m pip install gcsfs

COPY scripts /scripts

COPY requirements.txt .
RUN pip3 install -r requirements.txt

ENV PYTHONPATH "/scripts:${PYTHONPATH}"

CMD ["/bin/bash"]
