FROM --platform=linux/amd64 ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv curl unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws

CMD ["/bin/bash"]