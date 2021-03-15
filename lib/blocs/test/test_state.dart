part of 'test_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();
}

class TestInitial extends TestState {
  @override
  List<Object> get props => [];
}

class TsBtnCallApiLoading extends TestState {
  final bool status;
  TsBtnCallApiLoading(this.status);
  @override
  List<Object> get props => [status];
}

class TsCallApiSuccess extends TestState {
  final Member member;
  TsCallApiSuccess(this.member);
  @override
  List<Object> get props => [member];
}

class TestStateCallAPiFailed extends TestState {
  final String message;
  TestStateCallAPiFailed(this.message);
  @override
  List<Object> get props => [message];
}
