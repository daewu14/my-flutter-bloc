import 'package:flutter/services.dart';
export 'package:flutter/services.dart';

/// createdby Daewu Bintara
/// Tuesday, 4/20/21


/// T is class returned type data method
abstract class CmCore<T> {

  /// core my own channel name
  /// domain all method
  String _DAW_CHANNEL_NAME = "daw.flutter.dev";

  /// comunicating with private this method
  MethodChannel _mcp() => MethodChannel('$_DAW_CHANNEL_NAME');

  /// call method channel
  Future<T> callMethod(String methodName) async {
    try {
      T res = await _mcp().invokeMethod(methodName);
      return res;
    } on PlatformException catch (e) {
      print("---My method channel error---");
      print("Error code     : ${e.code}");
      print("Error message  : ${e.message}");
      print("Error details  : ${e.details}");
      print("---End of my method channel error---");
    }

  }

}
