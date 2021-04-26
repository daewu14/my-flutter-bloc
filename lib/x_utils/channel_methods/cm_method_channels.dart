import 'dart:io';

import 'cm_core.dart';

/// createdby Daewu Bintara
/// Tuesday, 4/20/21

class CmMinimizeApp extends CmCore<void> {

  void call() async {
    if (!Platform.isAndroid) return;
    return await callMethod("minimizeApp");
  }

}