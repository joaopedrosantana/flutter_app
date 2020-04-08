import 'package:flutterapp/core/di/app_module.dart';
import 'package:mobx/mobx.dart';

abstract class BaseViewModel<T>{
  final useCase = getIt<T>();
}
