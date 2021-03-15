import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_flutter_bloc/app_widgets/complex_modal.dart';
import 'package:my_flutter_bloc/base/base_widget.dart';
import 'package:my_flutter_bloc/blocs/_main/main_bloc.dart';
import 'package:my_flutter_bloc/blocs/test/test_bloc.dart';
import 'package:my_flutter_bloc/x_src/my_res.dart';

/// createdby Daewu Bintara
/// Friday, 2/26/21

class TestScreen extends BaseWidget {
  TestBloc testBloc;

  /// Listener state [TestState] of bloc [TestBloc]
  void _listener(BuildContext context, TestState state) {

    if (state is TsBtnCallApiLoading) {
      testBloc.btnApiCallLoading = state.status;
    }

    if (state is TsCallApiSuccess) {
      log("Member name : ${state.member.name}");
      voidShowDialog(
        context: context,
        title: XR().string(context).title_app(),
        contents: [
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.5),
            ),
            child: Text(XR().string(context).tutup()),
            onPressed: (){
              voidBack(context);
            },
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.5),
                side: BorderSide(
                    width: 1.0, color: Colors.grey
                )
            ),
            child: Text(XR().string(context).change_theme()),
            onPressed: () => context.read<MainBloc>().add(MainEventChangeTheme()),
          ),
        ]
      );
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //       backgroundColor: themeData.snackBarTheme.backgroundColor,
      //       behavior: SnackBarBehavior.floating,
      //       content: Text("${state.member.name}")
      //   ),
      // );
    }

    if (state is TestStateCallAPiFailed) {
      log("Member error : ${state.message}");
    }


  }

  @override
  Widget build(BuildContext context) {
    testBloc = context.read<TestBloc>();
    context.read<MainBloc>().listen((MainState mainState) {
      if (mainState is MsChangeLang) {

      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(XR().string(context).title_app()),
      ),
      body: Center(
        child: BlocConsumer<TestBloc, TestState>(
          listener: (_, state)=>_listener(context, state),
          builder: (_, state){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(XR().string(context).title_app()),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.5),
                    side: BorderSide(
                        width: 1.0, color: Colors.grey
                    )
                  ),
                  child: Text(XR().string(context).change_lang()),
                  onPressed: () => _changeLanguagePressed(context),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.5),
                    side: BorderSide(
                        width: 1.0, color: Colors.grey
                    )
                  ),
                  child: Text(XR().string(context).change_theme()),
                  onPressed: () => context.read<MainBloc>().add(MainEventChangeTheme()),
                ),
                _btnCallApi(context),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.5),
                      side: BorderSide(
                          width: 1.0, color: Colors.grey
                      )
                  ),
                  child: Text(XR().string(context).showBottomSheet()),
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => ComplexModal(),
                    );
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.5),
                      side: BorderSide(
                          width: 1.0, color: Colors.grey
                      )
                  ),
                  child: Text(XR().string(context).showAlert()),
                  onPressed: () {
                    voidShowDialog(
                      context: context,
                      title: XR().string(context).title_app(),
                        contents: [
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.5),
                            ),
                            child: Text(XR().string(context).tutup()),
                            onPressed: (){
                              voidBack(context);
                            },
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.5),
                                side: BorderSide(
                                    width: 1.0, color: Colors.grey
                                )
                            ),
                            child: Text(XR().string(context).change_theme()),
                            onPressed: () => context.read<MainBloc>().add(MainEventChangeTheme()),
                          ),
                        ]
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Change language with event [MainEventChangeLang]
  /// on bloc [MainBloc]
  void _changeLanguagePressed(BuildContext context) {

    var box = GetStorage();
    String langCode = box.read(MyConfig.LOCAL_KEY);
    Locale locale = Locale('en');
    if(langCode == 'en') {
      locale = Locale('id');
    }
    context.read<MainBloc>().add(MainEventChangeLang(locale));
  }

  /// [Widget]-[RaisedButton] Button Call Api
  Widget _btnCallApi(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
            width: 1.0, color: Colors.grey
        ),
      ),
      child: testBloc.btnApiCallLoading
          ? SizedBox(
            height: 20, width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
          : Text(XR().string(context).callApi()),
      onPressed: testBloc.btnApiCallLoading
          ? null
          : () => testBloc.add(TeCallApi()),
    );
  }

}