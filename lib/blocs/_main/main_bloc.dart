import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../../x_src/app_localizations.dart';
import '../../x_src/app_theme.dart';

part 'main_event.dart';
part 'main_state.dart';
var box = GetStorage();
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {

    if (event is MainEventChangeTheme) {
      yield* _changeTheme();
    }
    
    if (event is MainEventChangeLang) {
      yield* _changeLanguage(event.locale);
    }

  }

  Stream<MainState> _changeTheme() async* {
    AppTheme thmee = AppTheme();
    thmee.togleTheme();
    yield MsChangeTheme(thmee.currentTheme());
  }

  Stream<MainState> _changeLanguage(Locale locale) async* {
    Locale newLocale = AppLocalizations.setLocale(locale);
    yield MsChangeLang(newLocale);
  }
}
