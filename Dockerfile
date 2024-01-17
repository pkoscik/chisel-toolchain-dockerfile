FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris

# Prepare system
RUN apt-get update; apt-get install -y openjdk-8-jdk curl wget 1>/dev/null

# Install sbt
RUN curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup -y
RUN ./cs install sbt
ENV PATH="$PATH:/root/.local/share/coursier/bin"

# Install firrtl
RUN wget --progress=dot:giga -O - https://github.com/llvm/circt/releases/download/firtool-1.43.0/firrtl-bin-ubuntu-20.04.tar.gz | tar -zx -C /root
ENV PATH="$PATH:/root/firtool-1.43.0/bin"
