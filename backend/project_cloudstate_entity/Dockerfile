FROM google/dart

RUN apt-get -q update && \
    apt-get install -y protobuf-compiler

RUN pub global activate protoc_plugin

ADD ./protocols /app/protocols
ADD ./protocols_dart /app/protocols_dart
ADD ./event_handler /app/event_handler

WORKDIR /app/protocols_dart
RUN ./generate_protos.sh

WORKDIR /app/backend/project_cloudstate_entity

ADD ./backend/project_cloudstate_entity/pubspec.yaml /app/backend/project_cloudstate_entity
RUN pub get
ADD ./backend/project_cloudstate_entity /app/backend/project_cloudstate_entity
RUN pub get --offline
RUN dart --snapshot-kind=kernel --snapshot=bin/main.dart.snapshot bin/main.dart

CMD []
ENTRYPOINT ["/usr/bin/dart", "--enable-asserts",  "--enable-vm-service:8181", "bin/main.dart.snapshot"]
