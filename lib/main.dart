import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapp/app/viewmodels/movies_view_model.dart';
import 'package:flutterapp/core/di/app_module.dart';
import 'package:flutterapp/core/di/data_module.dart';
import 'package:flutterapp/core/di/domain_module.dart';
import 'package:flutterapp/core/di/view_model_module.dart';

void main() {
  DataModule();
  DomainModule();
  ViewModelModule();
  runApp(ModularApp(
    module: AppModule(),
  ));
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute);
  }
}
