part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class CeDecrement extends CounterEvent{
  final int value;
  CeDecrement(this.value);
  @override
  List<Object> get props => [value];
}

class CeIncrement extends CounterEvent{
  final int value;
  CeIncrement(this.value);
  @override
  List<Object> get props => [value];
}

class CeChangeLanguage extends CounterEvent{
  @override
  List<Object> get props => [];
}
