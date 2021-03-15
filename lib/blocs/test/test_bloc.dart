import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_flutter_bloc/models/member.dart';
import 'package:my_flutter_bloc/repository/repositories.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {

  bool btnApiCallLoading = TsBtnCallApiLoading(false).status;
  Repositories repo = Repositories();

  TestBloc() : super(TestInitial());

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is TeCallApi) yield* _getMemberDataFromApi();

  }

  Stream<TestState> _getMemberDataFromApi() async* {
    emit(TsBtnCallApiLoading(true));

    var res = await repo.getMember();
    if (res.status == true) {
      try {
        Member member = Member.fromMap(res.body['member']);
        yield TsCallApiSuccess(member);
      } catch (e) {
        yield TestStateCallAPiFailed("${res.text}");
      }
    } else {
      yield TestStateCallAPiFailed("${res.text}");
    }

    emit(TsBtnCallApiLoading(false));
  }

}
