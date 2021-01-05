import 'package:cloudstation/modules/project/project_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => MaterialApp(
        initialRoute: "/projects/test",
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
        debugShowCheckedModeBanner: false,
      );

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/projects", module: ProjectsModule()),
      ];
}
