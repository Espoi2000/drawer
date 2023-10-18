// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages, unnecessary_import, unused_local_variable

import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:drawertest/shared/utils/local_storage_management.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageInitial()) {
    on<ChangeLanguage>((event, emit) async {
      late Locale? _locale;
      Locale? language;
      var last = await LocalStorageManagement.getlocalStorage(
          LocalStorageManagement.appLanguage);
      if (last != null) {
        if (last != event.language) {
          language = Locale(event.language);
        }
      } else {
        language = Locale(event.language.toString());
      }
      LocalStorageManagement.saveLocalStorage(
          LocalStorageManagement.appLanguage, language.toString());

      emit(LanguageInitial(language: language.toString()));
    });
  }
}
