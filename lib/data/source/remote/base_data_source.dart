import 'package:flutterapp/core/di/app_module.dart';

class BaseDataSource<T> {
  final service = getIt<T>();
}
