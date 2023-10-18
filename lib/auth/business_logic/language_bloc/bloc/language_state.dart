part of 'language_bloc.dart';

sealed class LanguageState extends Equatable {
  final String? language;

  const LanguageState({
    required this.language,
  });

  @override
  List<Object?> get props => [language];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial({
    super.language,
  });
}
