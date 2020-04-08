import 'package:flutterapp/core/di/app_module.dart';

abstract class BaseUseCase<T> {
  var repository = getIt<T>();
}
