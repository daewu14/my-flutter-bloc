part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  AppTheme theme = AppTheme();
  Locale locale = AppLocalizations.getCurrentLocale();
  @override
  List<Object> get props => [theme, locale];
}

class MsChangeTheme extends MainState {
  final ThemeData newTheme;
  MsChangeTheme(this.newTheme);
  @override
  List<Object> get props => [newTheme];
}

class MsChangeLang extends MainState {
  final Locale newLocale;
  MsChangeLang(this.newLocale);
  @override
  List<Object> get props => [newLocale];
}
