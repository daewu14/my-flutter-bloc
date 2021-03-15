import 'package:flutter_driver/flutter_driver.dart';
import 'package:my_flutter_bloc/blocs/_main/main_bloc.dart';
import 'package:test/test.dart';

/// createdby Daewu Bintara
/// Wednesday, 3/3/21

void main() {
  group('App', () {

    MainBloc mainBloc;

    FlutterDriver driver;

    setUp(() async {
      mainBloc = MainBloc();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Initial test is MainInitial',() async {
      expect(mainBloc.state, MainInitial());
    });

    // final buttonIncrement = find.byValueKey('fabIncrement');
    //
    // FlutterDriver driver;
    //
    // setUpAll(() async {
    //   driver = await FlutterDriver.connect();
    // });
    //
    // tearDownAll(() async {
    //   if (driver != null) {
    //     driver.close();
    //   }
    // });
    //
    // test('App is ran When clicking buttonIncrement', () async {
    //   await driver.tap(buttonIncrement);
    // });
  });
}