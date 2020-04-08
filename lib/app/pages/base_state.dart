import 'package:flutter/cupertino.dart';
import 'package:flutterapp/app/viewmodels/base_view_model.dart';
import 'package:flutterapp/core/di/app_module.dart';

abstract class ViewModelState<TWidget extends StatefulWidget,
    VM extends BaseViewModel> extends State<TWidget> {
  final viewModel = getIt<VM>();
  @override
  void dispose() {
    super.dispose();
    //getIt.unregister(instance: viewModel);
  }
}
