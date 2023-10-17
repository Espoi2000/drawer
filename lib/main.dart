import 'package:drawertest/application.dart';
import 'package:drawertest/auth/business_logic/language_bloc/bloc/language_bloc.dart';

import 'package:drawertest/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LanguageBloc>(
          create: (BuildContext context) => getIt.get<LanguageBloc>(),
        ),
      ],
      child: const Application(),
    ),
  );
}
