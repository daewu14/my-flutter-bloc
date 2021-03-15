part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class MainEventChangeTheme extends MainEvent {
  @override
  List<Object> get props => [];

}


class MainEventChangeLang extends MainEvent {
  final Locale locale;
  MainEventChangeLang(this.locale);
  @override
  List<Object> get props => [locale];
}