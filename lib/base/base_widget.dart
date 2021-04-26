import 'package:animations/animations.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import '../x_src/my_res.dart';
import '../x_utils/widgets/x_util_widget.dart';

export 'package:flutter/material.dart';

export '../main.dart';
export '../x_src/my_res.dart';
export '../x_utils/utilities.dart';

/// createdby Daewu Bintara
/// Thursday, 3/4/21

/// Base of common functions.
class CoreBaseWidget {

  bool _isNavigationBusy = false;

  void alertLogin(BuildContext context) {
    voidShowDialog(
        context: context,
        title: XR().string(context).peringatan(),
        contents: [
          SizedBox(height: MySpace.paddingS),
          Center(
            child: Text(XR().string(context).text_login_untuk_melanjutkan(), textAlign: TextAlign.center),
          ),
          SizedBox(height: MySpace.paddingM),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MySpace.paddingL
            ),
            child: Row(
              children: [
                Expanded(
                  child: RoundedButton(
                    radius: 20,
                    color: Colors.grey[300],
                    textColor: Colors.black,
                    text: XR().string(context).batal(),
                    onPressed: (){
                      voidBack(context);
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RoundedButton(
                    radius: 20,
                    text: XR().string(context).login(),
                    onPressed: (){

                    },
                  ),
                ),
              ],
            ),
          )
        ]
    );
  }

  /// show basic flash
  void showBasicsFlash(BuildContext context, {
    Duration duration,
    String text = "",
    flashStyle = FlashStyle.floating,
  }) {
    showFlash(
      context: context,
      duration: duration ?? Duration(seconds: 1),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          style: flashStyle,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            message: Text('$text',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          ),
        );
      },
    );
  }

  /// show top flash
  void showTopFlash(BuildContext context, {
    FlashStyle style = FlashStyle.grounded,
    String title = 'Ups...',
    String message = '',
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 2),
      persistent: true,
      builder: (_, controller) {
        return Flash(
          controller: controller,
          brightness: themeData.brightness,
          backgroundColor: themeData.primaryColor,
          boxShadows: [BoxShadow(blurRadius: 4)],
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          style: style,
          position: FlashPosition.top,
          child: FlashBar(
            title: Text('$title',style: TextStyle(
                color: Colors.white
            )),
            message: Text('$message',style: TextStyle(
                color: Colors.white
            )),
            showProgressIndicator: false,
          ),
        );
      },
    );
  }

  /// show bottom flash
  void showBottomFlash(BuildContext context, {
    FlashStyle style = FlashStyle.floating,
    String title = 'Ups...',
    String message = '',
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 2),
      persistent: true,
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          boxShadows: [BoxShadow(blurRadius: 4)],
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          style: style,
          position: FlashPosition.top,
          child: FlashBar(
            title: Text('$title',style: TextStyle(
                color: Colors.black
            )),
            message: Text('$message',style: TextStyle(
                color: Colors.black
            )),
            showProgressIndicator: false,
          ),
        );
      },
    );
  }

  /// show loading dialog
  void showLoadingDialog(BuildContext context) {
    showModal(
        context: context,
        configuration: FadeScaleTransitionConfiguration(
          barrierDismissible: false,
        ),
        builder: (context){
          return WillPopScope(
            onWillPop: (){},
            child: Material(
              color: Colors.black26,
              child: Center(
                child: SizedBox(
                  width: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    elevation: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15),
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                        SizedBox(height: 5),
                        Text("${XR().string(context).loading()}",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }

  /// To dissmis keyboard
  void dissmisKeyboard(BuildContext context){
    FocusScope.of(context).unfocus();
    return FocusScope.of(context).requestFocus(FocusNode());
  }

  /// To show Dialog with simple Way.
  ///
  /// this widget use animation.dart package.
  ///
  /// except context all parameters is optional.
  void voidShowDialog({
    @required BuildContext context,
    Color backgroundColor,
    String title,
    bool barrierDismissible = true,
    double borderRadius = 15,
    double spaceTopBottom = 10.0,
    List<Widget> contents,
  }) {
    showModal(
        context: context,
        configuration: FadeScaleTransitionConfiguration(
          barrierDismissible: barrierDismissible,
        ),
        builder: (context){
          return Dialog(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)
            ),
            child: WillPopScope(
              onWillPop: (){if(barrierDismissible) Navigator.pop(context);},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: spaceTopBottom),
                  title == null ? Container() : Text("$title",
                    style: TextStyle(
                      fontSize: 20,
                    ), textAlign: TextAlign.center,
                  ),
                  ...contents,
                  SizedBox(height: spaceTopBottom - 2),
                ],
              ),
            ),
          );
        }
    );
  }

  /// simple action pop.
  void voidBack<T extends Object>(BuildContext context, [ T result ]) {
    Navigator.of(context).pop<T>(result);
  }

  /// simple action push named.
  void voidPushNamed(BuildContext context, {String routeName, Object arguments, Function(Object val) callBack}) async {
    if (_isNavigationBusy) return;
    _isNavigationBusy = true;
    await Future.delayed(Duration(milliseconds: 200));
    _isNavigationBusy = false;

    if (callBack != null) {
      Navigator.of(context).pushNamed(routeName, arguments: arguments).then((value) => callBack(value));
    } else {
      Navigator.of(context).pushNamed(routeName, arguments: arguments);
    }
  }

  /// simple action push named.
  Future<T> voidPushReplacementNamed<T extends Object, TO extends Object>(
      BuildContext context,
      String routeName, {
        TO result,
        Object arguments,
      }) {
    return Navigator.of(context).pushReplacementNamed<T, TO>(routeName, arguments: arguments, result: result);
  }
}

/// extend to your [StatelessWidget].
abstract class BaseWidget extends StatelessWidget with CoreBaseWidget{

}