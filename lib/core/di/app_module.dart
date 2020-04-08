// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapp/app/pages/movies/movies_pages.dart';
import 'package:flutterapp/app/pages/splash_page.dart';
import 'package:flutterapp/core/di/data_module.dart';
import 'package:flutterapp/core/di/domain_module.dart';
import 'package:flutterapp/core/di/view_model_module.dart';
import 'package:get_it/get_it.dart';

import '../../main.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => SplashPage()),
    Router('/home', child: (_, args) => MoviesPage())
  ];

  @override
  Widget get bootstrap => App();

}

final GetIt getIt = GetIt.instance;
