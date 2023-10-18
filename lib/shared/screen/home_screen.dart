import 'package:auto_route/auto_route.dart';
import 'package:drawertest/auth/business_logic/language_bloc/bloc/language_bloc.dart';

import 'package:drawertest/shared/utils/language_list.dart';
import 'package:drawertest/shared/utils/local_storage_management.dart';
import 'package:drawertest/shared/widgets/altert_dialogue.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localstorage/localstorage.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await LocalStorage(LocalStorageManagement.appName).ready;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var blocProvider = context.read<LanguageBloc>();
    var appLocalizations = AppLocalizations.of(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.amber,
        child: Center(
          child: Text(appLocalizations!.localeName),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialogue(
              width: 50,
              height: 100,
              child: BlocBuilder<LanguageBloc, LanguageState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: languages.length,
                    itemBuilder: (BuildContext context, int index) {
                      var langue = languages[index];

                      return GestureDetector(
                        onTap: () {
                          blocProvider.add(
                            ChangeLanguage(
                              language: langue["value"].toString(),
                            ),
                          );

                          context.router.pop();
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Flag.fromString(
                                langue["value"].toString(),
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              langue["name"].toString(),
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          child: const Icon(
            Icons.add,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
