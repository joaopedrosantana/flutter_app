import 'package:flutterapp/core/di/app_module.dart';

abstract class BaseRepository<T> {
  var dataSource = getIt<T>();
}
