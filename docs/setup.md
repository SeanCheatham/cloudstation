# Developer Setup

At the moment, the UI targets Linux desktop.  Targetting other desktop platforms is possible as interest in the project grows.

## Flutter
1. Install Flutter.
   - [Flutter Install]([Instructions](https://flutter.dev/docs/get-started/install))
   - Run `flutter channel dev`
   - Run `flutter upgrade`
   - Run `flutter config --enable-linux-desktop`
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
    - `flutter run`
