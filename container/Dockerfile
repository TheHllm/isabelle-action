# based on https://hub.docker.com/r/makarius/isabelle
FROM ubuntu

ARG isabelle_version=Isabelle2021

# packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
  apt-get install -y curl less libfontconfig1 libgomp1 libwww-perl rlwrap unzip texlive-latex-recommended texlive-latex-extra texlive-fonts-extra texlive-lang-all && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN curl https://isabelle.in.tum.de/website-${isabelle_version}/dist/${isabelle_version}_linux.tar.gz > ${isabelle_version}_linux.tar.gz && \
  tar xzf ${isabelle_version}_linux.tar.gz && \
  ${isabelle_version}/bin/isabelle build -v -o system_heaps -b HOL && \
  rm ${isabelle_version}_linux.tar.gz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
