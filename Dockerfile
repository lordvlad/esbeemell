FROM trzeci/emscripten:sdk-tag-1.35.4-64bit

RUN apt-get update && apt-get install -y libxml2-dev libz-dev libbz2-dev swig build-essential
ADD https://downloads.sourceforge.net/project/sbml/libsbml/5.15.0/stable/libSBML-5.15.0-core-plus-packages-src.tar.gz?r=&ts=1502488672&use_mirror=netcologne /src/

WORKDIR /src/libSBML-5.15.0-Source
RUN emconfigure ./configure
RUN emmake make


