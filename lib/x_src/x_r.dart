import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'app_localizations.dart';

/// createdby Daewu Bintara
/// Monday, 2/1/21
final box = GetStorage();

class XR {
  _String string(BuildContext context) => _String(context);
  _AssetsImage assetsImage = _AssetsImage();
}

class _AssetsImage {

  static const String images = 'assets/images/';

  String img_logo = images+'img_logo.png';
}

class _String {
  final BuildContext context;
  _String(this.context);

  String tr(String key) {
    return AppLocalizations.of(context).translate(key);
  }

  // ignore: non_constant_identifier_names
  String title_app() => tr('title_app');
  String saya() => tr('saya');
  String peringatan() => tr('peringatan');
  String tutup() => tr('tutup');
  String reload() => tr('reload');
  String error_message() => tr('error_message');
  String beranda() => tr('beranda');
  String change_lang() => tr('change_lang');
  String increment() => tr('increment');
  String goto_test() => tr('goto_test');
  String test_screen() => tr('test_screen');
  String my_flutter() => tr('my_flutter');
  String change_theme() => tr('change_theme');
  String callApi() => tr('call_api');
  String showBottomSheet() => tr('show_bottom_sheet');
  String showAlert() => tr('show_alert');

}

class Translation {

  Map<String, Map<String, String>> get keys => {
    'id': { // INDONESIAN
      'title_app': 'Judul Aplikasimu',
      'saya' : 'Sayaa',
      'peringatan': 'Peringatan',
      'tutup': 'Tutup',
      'reload': 'Ulangi',
      'error_message': 'Terjadi kesalahan, coba beberapa saat lagi...',
      'beranda': 'Beranda',
      'change_lang': 'Ubah Bahasa',
      'increment': 'Penambahan',
      'goto_test': 'Menuju Halaman Test',
      'test_screen': 'Halaman Test',
      'my_flutter': 'Flutter Saya',
      'change_theme': 'Ubah Tema',
      'call_api': 'Panggil Api',
      'show_bottom_sheet': 'Buka Bottomsheet',
      'show_alert': 'Buka Alert',
    },
    'en': { // ENGLISH
      'title_app': 'Your App Title',
      'saya': 'I\'am',
      'peringatan' : 'Anouncement',
      'tutup' : 'Close',
      'reload' : 'Reload',
      'error_message': 'Something went wrong, try again later...',
      'beranda': 'Home',
      'change_lang': 'Change Language',
      'increment': 'Increment',
      'goto_test': 'Go to Test Screen',
      'test_screen': 'Test Screen',
      'my_flutter': 'My Flutter',
      'change_theme': 'Change Theme',
      'call_api': 'Call Api',
      'show_bottom_sheet': 'Open Bottomsheet',
      'show_alert': 'Open Alert',
    }
  };
}
