part of 'counter_bloc.dart';


abstract class CounterState extends Equatable {
  const CounterState();
}

class CsInitial extends CounterState {
  int val = 0;
  @override
  // TODO: implement props
  List<Object> get props => [val];

}

class CsValue extends CounterState {
  final int value;
  CsValue(this.value);
  @override
  // TODO: implement props
  List<Object> get props => [value];

}


class CsLanguage extends CounterState {
  final Locale locale;
  CsLanguage(this.locale);
  List<Object> get props => [locale];
}