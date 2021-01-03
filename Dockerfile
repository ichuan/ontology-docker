FROM ubuntu:18.04

WORKDIR /opt
VOLUME /opt/coin
# port for: rpc, rest, ws
EXPOSE 20336 20334 20335

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/ontio/ontology/releases/download/v2.1.0/ontology-linux-amd64 -O ontology
RUN chmod +x ontology
RUN mkdir -p /opt/coin/data

RUN rm -rf /var/lib/apt/lists/*

CMD ["--data-dir=/opt/coin/data", "--wallet=/opt/coin/wallet.dat", "--password=ont", "--rest", "--ws"]
ENTRYPOINT ["/opt/ontology"]
