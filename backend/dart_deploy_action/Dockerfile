FROM google/dart

# Install Docker

RUN apt-get -q update && \
    apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable" && \
   apt-get -q update && \
   apt-get install docker-ce docker-ce-cli containerd.io

# Install CloudState CLI

RUN curl https://raw.githubusercontent.com/sleipnir/cloudstate-cli/master/bin/cloudstate-installer.sh | sh -

WORKDIR /app

ADD pubspec.yaml /app/
RUN pub get
ADD . /app
RUN pub get --offline
RUN dart --snapshot-kind=kernel --snapshot=bin/main.dart.snapshot bin/main.dart

CMD []
ENTRYPOINT ["/usr/bin/dart", "--enable-asserts",  "--enable-vm-service:8181", "bin/main.dart.snapshot"]