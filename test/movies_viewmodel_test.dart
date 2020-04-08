// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/app/viewmodels/movies_view_model.dart';
import 'package:flutterapp/core/di/app_module.dart';
import 'package:flutterapp/domain/usecase/movies_use_case.dart';
import 'package:flutterapp/main.dart';

void main() {

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App());

    var movieUseCase = getIt<MoviesUseCase>();
    var viewModel = getIt<MoviesViewModel>();

    movieUseCase.getMovies().then((value){
      viewModel.init();

    });
  });

  test("Teste valores na lista", () {
    var movieUseCase = getIt<MoviesUseCase>();
    var viewModel = getIt<MoviesViewModel>();

    movieUseCase.getMovies().then((value){
      viewModel.init();

    });
  });
}
