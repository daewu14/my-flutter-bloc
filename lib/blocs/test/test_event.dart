part of 'test_bloc.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();
  @override
  List<Object> get props => [];
}

class Increment extends TestEvent {}

class TeCallApi extends TestEvent{}