import 'package:drawertest/auth/business_logic/language_bloc/language_bloc.dart';

import 'package:drawertest/routes/router.dart';
import 'package:drawertest/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ChangeLaguageBloc>(
          create: (BuildContext context) => getIt.get<ChangeLaguageBloc>(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: GoogleFonts.poppins().toString(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
