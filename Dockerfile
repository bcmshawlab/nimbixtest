FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /helloWorld /usr/bin/
RUN apt-get update && apt-get -y --force-yes install curl wget cuda-samples-7.5 make g++ && apt-get clean 

# apt-get -y --force-yes install cuda

RUN make -C /usr/local/cuda/samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin

# RUN wget https://github.com/RWilton/Arioc/archive/v1.21.tar.gz
RUN wget https://github.com/RWilton/Arioc/releases/download/v1.21/Arioc.x.121.zip
# RUN unzip -xvzf Arioc.x.121.zip
# RUN cd src && make


# ADD ./NAE/help.html /etc/NAE/help.html
