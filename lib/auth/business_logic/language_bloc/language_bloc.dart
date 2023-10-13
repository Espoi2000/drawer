import 'package:drawertest/shared/utils/language_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';
part 'language_state.dart';

class ChangeLaguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final String? languageCode;

  ChangeLaguageBloc({this.languageCode})
      : super(ChangeInitialLanguageState(languageCode: "languageCode")) {
    on<LanguageEvent>((event, emit) {
      print("coucou les dev");
      print(languages);
      emit(const ChangeInitialLanguageState(languageCode: "fr"));
    });
  }
}
