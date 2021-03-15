import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

/// createdby Daewu Bintara
/// Thursday, 3/4/21

/// Base of common functions.
class CoreBaseWidget {
  /// To show Dialog with simple Way.
  ///
  /// this widget use animation.dart package.
  ///
  /// except context all parameters is optional.
  void voidShowDialog({
    @required BuildContext context,
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
                    ),
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
  Future<Navigator> voidPushNamed(BuildContext context, {String routeName, Object arguments}) {
    return Navigator.of(context).pushNamed(routeName, arguments: arguments);
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