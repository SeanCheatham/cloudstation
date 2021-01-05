# Developer Setup

At the moment, the UI targets Web and Linux desktop.  Targetting other platforms is possible as interest in the project grows.

## Flutter
1. Install Flutter.
   - [Flutter Install]([Instructions](https://flutter.dev/docs/get-started/install))
   - Run `flutter channel dev`
   - Run `flutter upgrade`
   - (Linux-only) Run `flutter config --enable-linux-desktop`
   - Run `flutter config --enable-web`
2. Install protoc
   - [README](https://github.com/protocolbuffers/protobuf)
2. Install Dart protoc plugin
    - `pub global activate protoc_plugin`
3. Generate Dart protos.
   - `cd protocols_dart`
   - `flutter pub get`
   - `./generate_protos.sh`
   - `cd ..`
4. Run Frontend
    - `cd frontend`
    - `flutter pub get`
    - `flutter run -d chrome` OR `flutter run -d linux`
