import 'dart:io';

import 'package:device_info/device_info.dart';

/// createdby Daewu Bintara
/// Friday, 1/22/21

class MyDeviceInfo {
  DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  String _platform = Platform.isAndroid ? "android" : "ios";

  Future<String> deviceName() async {
    String name = "unknown";
    if(_platform == "android") {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      name = await androidInfo.model;
    } else {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      name = await iosInfo.utsname.machine;
    }
    return name;
  }

  Future<String> deviceID() async {
    String id = "unknown";
    if(_platform == "android") {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      id = await androidInfo.androidId;
    } else {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      id = await iosInfo.identifierForVendor;
    }
    return id;
  }

  Future<String> deviceModel() async {
    String model = "unknown";
    if(_platform == "android") {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      model = await androidInfo.model;
    } else {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      model = await iosInfo.model;
    }
    return model;
  }

  Future<String> deviceSystemVersion() async {
    String systemVersion = "unknown";
    if(_platform == "android") {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      systemVersion = await androidInfo.version.sdkInt.toString();
    } else {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      systemVersion = await iosInfo.systemVersion;
    }
    return systemVersion;
  }

}