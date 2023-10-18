part of 'language_bloc.dart';

sealed class LanguageEvent extends Equatable {
  final String language;

  const LanguageEvent({
    required this.language,
  });

  @override
  List<Object> get props => [language];
}

class ChangeLanguage extends LanguageEvent {
  const ChangeLanguage({
    required super.language,
  });
}
