FROM ciiichy/ubuntu-dind-git

RUN git clone https://github.com/sstephenson/bats.git /tmp/bats \
  && /tmp/bats/install.sh /usr/local \
  && rm -rf /tmp/bats


LABEL org.label-schema.schema-version="1.0.0"
LABEL org.label-schema.name="dind-bats"
LABEL org.label-schema.description="Docker-in-Docker with Bats testing library"
LABEL org.label-schema.url="https://github.com/kosprov/dind-bats"
LABEL org.label-schema.vcs-url="https://github.com/kosprov/dind-bats"
LABEL org.label-schema.vendor="Kos Prov (kosprov@gmail.com)"
LABEL org.label-schema.version="1.0.0"
LABEL org.label-schema.docker.cmd="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/var/app kosprov/dind-bats bats test.bats"
