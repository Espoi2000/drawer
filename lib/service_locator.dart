import 'package:drawertest/auth/business_logic/language_bloc/language_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ChangeLaguageBloc>(() => ChangeLaguageBloc());
}
