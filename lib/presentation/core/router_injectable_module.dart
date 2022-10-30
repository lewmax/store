import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@module
abstract class RouterInjectableModule {
  @lazySingleton
  AppRouter get router => AppRouter();
}
