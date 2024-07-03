import 'package:get_it/get_it.dart';
import 'package:sayakatoo/sayakatoo/config/di/bloc_module.dart';
import 'package:sayakatoo/sayakatoo/config/di/repository_module.dart';

final getIt = GetIt.instance;

void setupLocator() {
  setupBlocModule(getIt);
  setupRepositoryModule(getIt);
}
