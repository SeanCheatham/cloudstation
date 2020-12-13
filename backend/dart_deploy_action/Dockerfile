## NOTE: This Dockerfile must be run from the repository root

FROM google/dart

# Install Docker

RUN apt-get -q update && \
    apt-get install -y \
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
   apt-get install -y docker-ce docker-ce-cli containerd.io && \
   apt-get install -y protobuf-compiler

RUN pub global activate protoc_plugin

# Install CloudState CLI
# TODO: Re-enable
# RUN curl https://raw.githubusercontent.com/sleipnir/cloudstate-cli/master/bin/cloudstate-installer.sh | sh -

ADD ./protocols /app/protocols
ADD ./protocols_dart /app/protocols_dart

WORKDIR /app/protocols_dart
RUN ./generate_protos.sh

WORKDIR /app/backend/dart_deploy_action

ADD ./backend/dart_deploy_action/pubspec.yaml /app/backend/dart_deploy_action
RUN pub get
ADD ./backend/dart_deploy_action /app/backend/dart_deploy_action
RUN pub get --offline
RUN dart --snapshot-kind=kernel --snapshot=bin/main.dart.snapshot bin/main.dart

CMD []
ENTRYPOINT ["/usr/bin/dart", "--enable-asserts",  "--enable-vm-service:8181", "bin/main.dart.snapshot"]
