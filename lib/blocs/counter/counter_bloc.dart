import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:my_flutter_bloc/x_src/app_localizations.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int val = 0;

  CounterBloc() : super(CsValue(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CeDecrement) {
      yield CsValue(event.value - 1);
    }
    else if (event is CeIncrement) {
      yield CsValue(event.value + 1);
    }
    else if (event is CeChangeLanguage) {
      yield* _changeLaguage();
    } else {
      addError(Exception('unsupported event'));
    }
  }

  Stream<CounterState> _changeLaguage() async* {
    Locale old = AppLocalizations.getCurrentLocale();
    Locale locale = AppLocalizations.setLocale(
        old.languageCode == "id" ? Locale("en") : Locale("id"));
    yield CsLanguage(locale);
  }
}
