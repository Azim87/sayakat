import 'package:get_it/get_it.dart';

import '../../presentation/pages/auth/signin/signin_cubit.dart';

void setupBlocModule(GetIt getIt) {
  getIt.registerLazySingleton<SigninCubit>(() => SigninCubit());
}
