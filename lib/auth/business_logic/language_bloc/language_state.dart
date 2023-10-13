// ignore_for_file: unused_field

part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();
  @override
  List<Object> get props => [];
}

class ChangeInitialLanguageState extends LanguageState {
  final String languageCode;
  const ChangeInitialLanguageState({required this.languageCode});
  @override
  List<Object> get props => [
        languageCode,
      ];
}
