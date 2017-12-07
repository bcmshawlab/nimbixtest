FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /helloWorld /usr/bin/
RUN apt-get update && apt-get -y --force-yes install curl cuda-samples-7.5 make g++ && apt-get clean 

# apt-get -y --force-yes install cuda

RUN make -C /usr/local/cuda/samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin

RUN curl https://github.com/RWilton/Arioc/archive/v1.21.tar.gz -o arioc121.tar.gz


# ADD ./NAE/help.html /etc/NAE/help.html
