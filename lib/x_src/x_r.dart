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
  String img_advertisement = images+'img_advertisement.png';
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
  String success_upload() => tr('success_upload');
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
  String login() => tr('login');
  String register() => tr('register');
  String textLoginSosmedAndroid() => tr('textLoginSosmedAndroid');
  String textLoginSosmedIos() => tr('textLoginSosmedIos');
  String password() => tr('password');
  String cannot_null() => tr('cannot_null');
  String forgotPassword() => tr('forgotPassword');
  String klickHere() => tr('klickHere');
  String inputYourEmail() => tr('inputYourEmail');
  String success() => tr('success');
  String failed() => tr('failed');
  String loading() => tr('loading');
  String fullName() => tr('fullName');
  String phoneNumber() => tr('poneNumber');
  String tanggalLahir() => tr('tanggalLahir');
  String gender() => tr('gender');
  String passwordConfirmation() => tr('passwordConfirmation');
  String address() => tr('address');
  String pria() => tr('pria');
  String wanita() => tr('wanita');
  String pilihAkun() => tr('pilihAkun');
  String provinsi() => tr('provinsi');
  String kabupaten() => tr('kabupaten');
  String pilih() => tr('pilih');
  String home() => tr('home');
  String promo() => tr('promo');
  String transaction() => tr('transaction');
  String profile() => tr('profile');
  String more() => tr('more');
  String errorLocationPermission() => tr('errorLocationPermission');
  String discount() => tr('discount');
  String product() => tr('product');
  String cart() => tr('cart');
  String notification() => tr('notification');
  String whatYouFind() => tr('what_you_find');
  String detailProduct() => tr('detail_product');
  String masaBerlaku() => tr('masa_berlaku');
  String tersedia() => tr('tersedia');
  String deskripsi() => tr('deskripsi');
  String clear() => tr('clear');
  String keywordHistory() => tr('keyword_history');
  String productSearchHistory() => tr('productSearchHistory');
  String noItemFound() => tr('no_item_found');
  String cari() => tr('cari');
  String detailPromo() => tr('detailPromo');
  String detailBerita() => tr('detailBerita');
  String promoZoneCode() => tr('promoZoneCode');
  String promoZoneAll() => tr('promoZoneAll');
  String findPromoProduct() => tr('findPromoProduct');
  String findDiscountProduct() => tr('findDiscountProduct');
  String findProduct() => tr('findProduct');
  String productPromoMemberOnly() => tr('productPromoMemberOnly');
  String urutkan() => tr('urutkan');
  String category() => tr('category');
  String filter() => tr('filter');
  String cariProduct() => tr('cariProduct');
  String rangeHarga() => tr('rangeHarga');
  String terapkan() => tr('terapkan');
  String batal() => tr('batal');
  String maxPrice() => tr('maxPrice');
  String minPrice() => tr('minPrice');
  String aturUlang() => tr('aturUlang');
  String Popular() => tr('Popular');
  String Terbaru() => tr('Terbaru');
  String Rating() => tr('Rating');
  String HargaTrendah() => tr('HargaTrendah');
  String HargaTertinggi() => tr('HargaTertinggi');
  String sk() => tr('sk');
  String activation() => tr('activation');
  String activationPending() => tr('activationPending');
  String memberExpired() => tr('memberExpired');
  String activationReject() => tr('activationReject');
  String save() => tr('save');
  String galery() => tr('galery');
  String camera() => tr('camera');
  String done() => tr('done');
  String needAccessCamera() => tr('needAccessCamera');
  String needAccessGalery() => tr('needAccessGalery');
  String uploading() => tr('uploading');
  String light() => tr('light');
  String dark() => tr('dark');
  String news_n_promo() => tr('news_n_promo');
  String transaction_sub() => tr('transaction_sub');
  String news_n_promo_sub() => tr('news_n_promo_sub');
  String branch_outlet() => tr('branch_outlet');
  String branch_outlet_sub() => tr('branch_outlet_sub');
  String pesan() => tr('pesan');
  String pesan_sub() => tr('pesan_sub');
  String address_book() => tr('address_book');
  String address_book_sub() => tr('address_book_sub');
  String critics_n_sugest() => tr('critics_n_sugest');
  String critics_n_sugest_sub() => tr('critics_n_sugest_sub');
  String faq() => tr('faq');
  String faq_sub() => tr('faq_sub');
  String change_password() => tr('change_password');
  String change_password_sub() => tr('change_password_sub');
  String logout() => tr('logout');
  String logout_sub() => tr('logout_sub');
  String contact_us() => tr('contact_us');
  String contact_us_sub() => tr('contact_us_sub');
  String about() => tr('about');
  String about_sub() => tr('about_sub');
  String news() => tr('news');
  String gotOutlet() => tr('gotOutlet');
  String addToCart() => tr('addToCart');
  String cantTrxOnline() => tr('cantTrxOnline');
  String conversation() => tr('conversation');
  String title() => tr('title');
  String send() => tr('send');
  String type_message() => tr('type_message');
  String readed() => tr('readed');
  String pesanBaru() => tr('pesanBaru');
  String baru() => tr('baru');
  String proses() => tr('proses');
  String berhasil() => tr('berhasil');
  String and_x_other_item() => tr('and_x_other_item');
  String orders_shipped_from() => tr('orders_shipped_from');
  String jumlah() => tr('jumlah');
  String transaction_detail() => tr('transaction_detail');
  String alamat_pengiriman() => tr('alamat_pengiriman');
  String information() => tr('information');
  String tagihan() => tr('tagihan');
  String total_bayar() => tr('total_bayar');
  String metode_pembayaran() => tr('metode_pembayaran');
  String metode_pesan() => tr('metode_pesan');
  String rincian() => tr('rincian');
  String total_belanja() => tr('total_belanja');
  String biaya_antar() => tr('biaya_antar');
  String dicount() => tr('dicount');
  String onlyUseRekNumberAbove() => tr('onlyUseRekNumberAbove');
  String transfer_payment() => tr('transfer_payment');
  String kode_aktivasi() => tr('kode_aktivasi');
  String text_upgrade() => tr('text_upgrade');
  String menunggu_pembayaran() => tr('menunggu_pembayaran');
  String pesanan_diproses() => tr('pesanan_diproses');
  String pesanan_dikirim() => tr('pesanan_dikirim');
  String pesanan_selesai() => tr('pesanan_selesai');
  String pesanan_batal() => tr('pesanan_batal');
  String dipesan_pada() => tr('dipesan_pada');
  String pesanan_tersedia_di() => tr('pesanan_tersedia_di');
  String salin() => tr('salin');
  String price() => tr('price');
  String siap_diambil() => tr('siap_diambil');
  String review_product() => tr('review_product');
  String show_review() => tr('show_review');
  String hapus() => tr('hapus');
  String tambah_alamat() => tr('tambah_alamat');
  String address_detail() => tr('address_detail');
  String pilih_lokasi_ini() => tr('pilih_lokasi_ini');
  String rumah() => tr('rumah');
  String jadikan_alamat_default() => tr('jadikan_alamat_default');
  String simpan_alamat() => tr('simpan_alamat');
  String primary() => tr('primary');
  String pusatkan() => tr('pusatkan');
  String edit_lagi() => tr('edit_lagi');
  String berhasil_menyimpan_data() => tr('berhasil_menyimpan_data');
  String text_contact_us() => tr('text_contact_us');
  String old_password() => tr('old_password');
  String new_password() => tr('new_password');
  String new_password_confirmation() => tr('new_password_confirmation');
  String berhasil_merubah_password() => tr('berhasil_merubah_password');
  String keranjang_belanja_anda() => tr('keranjang_belanja_anda');
  String belanja_lagi() => tr('belanja_lagi');
  String keranjang_belanja_kosong() => tr('keranjang_belanja_kosong');
  String belanja_sekarang() => tr('belanja_sekarang');
  String tulis_catatan() => tr('tulis_catatan');
  String pilih_metode_pembayaran() => tr('pilih_metode_pembayaran');
  String diskon_ongkir() => tr('diskon_ongkir');
  String diambil_pada() => tr('diambil_pada');
  String sold_out() => tr('sold_out');
  String text_non_member() => tr('text_non_member');
  String pilih_metode_pemesanan() => tr('pilih_metode_pemesanan');
  String ambil_ditoko() => tr('ambil_ditoko');
  String dikirim() => tr('dikirim');
  String text_daftar_outlet_tersedia_produk() => tr('text_daftar_outlet_tersedia_produk');
  String lanjutkan() => tr('lanjutkan');
  String yakin_hapus_produk_cart() => tr('yakin_hapus_produk_cart');
  String yuk_daftar_jadi_member() => tr('yuk_daftar_jadi_member');
  String masuk_sebagai_tamu() => tr('masuk_sebagai_tamu');
  String text_login_untuk_melanjutkan() => tr('text_login_untuk_melanjutkan');
  String next() => tr('next');

  String kalimat_ajakan_member() => tr('kalimat_ajakan_member');


// 1|DIY & Jawa Tengah
// 2|Jawa Barat
// 0|Bali

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
      'login': 'Masuk',
      'register': 'Daftar',
      'textLoginSosmedAndroid': 'Anda juga bisa masuk menggunakan akun\nFacebook atau Google',
      'textLoginSosmedIos': 'Anda juga bisa masuk menggunakan akun\nApple, Facebook atau Google',
      'password': 'Kata Sandi',
      'cannot_null': 'tidak boleh kosong',
      'forgotPassword': 'Lupa kata sandi?',
      'klickHere': 'Klik di sini',
      'inputYourEmail': 'Masukkan email anda',
      'success': 'Berhasil',
      'failed': 'Gagal',
      'loading': 'Memuat...',
      'fullName': 'Nama lengkap',
      'poneNumber': 'No. Handphone',
      'tanggalLahir': 'Tanggal Lahir',
      'gender': 'Jenis Kelamin',
      'passwordConfirmation': 'Konfirmasi Sandi',
      'address': 'Alamat',
      'pria': 'Laki-laki',
      'wanita': 'Perempuan',
      'pilihAkun': 'Pilih Akun Dari',
      'provinsi': 'Provinsi',
      'kabupaten': 'Kabupaten',
      'pilih': 'Pilih',
      'home': 'Beranda',
      'promo': 'Promo',
      'transaction': 'Transaksi',
      'profile': 'Profile',
      'more': 'Lainnya',
      'errorLocationPermission': 'Aplikasi ini membutuhkan permisi lokasi',
      'discount': 'Diskon',
      'product': 'Produk',
      'cart': 'Keranjang',
      'notification': 'Notifikasi',
      'what_you_find': 'Mau cari apa?',
      'detail_product': 'Produk Detail',
      'masa_berlaku': 'Masa berlaku',
      'tersedia': 'Tersedia',
      'deskripsi': 'Deskripsi',
      'clear': 'Bersihkan',
      'keyword_history': 'Riwayat pencarian anda',
      'productSearchHistory': 'Produk pencarian anda',
      'no_item_found': 'Data tidak ditemukan',
      'cari': 'Cari',
      'detailPromo': 'Detail Promo',
      'detailBerita': 'Detail Berita',
      'promoZoneCode': 'PROMOSI - Hanya berlaku untuk App wilayah ',
      'promoZoneAll': 'PROMOSI - Berlaku untuk seluruh App seluruh Indonesia',
      'findPromoProduct': 'Cari produk promo',
      'findDiscountProduct': 'Cari produk diskon',
      'findProduct': 'Cari produk',
      'productPromoMemberOnly': 'Produk Promo Khusus Member',
      'urutkan': 'Urutkan',
      'category': 'Kategori',
      'filter': 'Filter',
      'cariProduct': 'Cari produk',
      'rangeHarga': 'Range Harga',
      'terapkan': 'Terapkan',
      'batal': 'Batal',
      'maxPrice': 'Harga Tertinggi',
      'minPrice': 'Harga Terendah',
      'aturUlang': 'Atur Ulang',
      'Popular': 'Popular',
      'Terbaru': 'Terbaru',
      'Rating': 'Rating',
      'HargaTrendah': 'Harga Trendah',
      'HargaTertinggi': 'Harga Tertinggi',
      'sk': 'Syarat & Ketentuan',
      'activation': 'Aktivasi',
      'activationPending': 'Aktivasi dalam proses',
      'memberExpired': 'Masa aktif telah habis',
      'activationReject': 'Aktivasi ditolak',
      'save': 'Simpan',
      'camera': 'Kamera',
      'galery': 'Galeri',
      'done': 'Selesai',
      'needAccessCamera': 'Dibutuhkan akses kamera',
      'needAccessGalery': 'Dibutuhkan akses galery',
      'uploading': 'Mengupload',
      'success_upload': 'Berhasil Upload',
      'light': 'Terang',
      'dark': 'Gelap',
      'news_n_promo': 'Berita & Promo',
      'transaction_sub': 'Transaksi baru',
      'news_n_promo_sub': 'Temukan berita dan promo disini',
      'branch_outlet': 'Outlet Cabang',
      'branch_outlet_sub': 'Outlet cabang',
      'pesan': 'Pesan',
      'pesan_sub': 'Pesan belum dibaca',
      'address_book': 'Alamat Pengiriman Anda',
      'address_book_sub': 'Alamat pengiriman anda',
      'critics_n_sugest': 'Kritik & Saran',
      'critics_n_sugest_sub': 'Berikan saran & kritik mengenai pelayanan kami',
      'faq': 'FAQ',
      'faq_sub': 'Pertanyaan yang sering di ajukan',
      'change_password': 'Ganti Kata Sandi',
      'change_password_sub': 'Ganti kata sandi anda',
      'logout': 'Keluar',
      'logout_sub': 'Yakin keluar dari akun?',
      'contact_us': 'Hubungi Kami',
      'contact_us_sub': 'Hubungi kami',
      'about': 'Tentang',
      'about_sub': 'Informasi tentang',
      'news': 'Berita',
      'gotOutlet': 'Menuju Toko',
      'addToCart': 'Tambah ke keranjang',
      'cantTrxOnline': 'Maaf, Transaksi online belum tersedia di wilayah anda',
      'conversation': 'Percakapan',
      'title': 'Judul',
      'send': 'Kirim',
      'type_message': 'Tulis pesan',
      'readed': 'Dibaca',
      'pesanBaru': 'Pesan Baru',
      'baru': 'Baru',
      'proses': 'Proses',
      'berhasil': 'Berhasil',
      'and_x_other_item': 'dan x item lainnya',
      'orders_shipped_from': 'Pesanan dikirim dari',
      'jumlah': 'Jumlah',
      'transaction_detail': 'Detail Transaksi',
      'alamat_pengiriman': 'Alamat Pengiriman',
      'information': 'Informasi',
      'tagihan': 'Tagihan',
      'total_bayar': 'Total Bayar',
      'metode_pembayaran': 'Metode Pembayaran',
      'metode_pesan': 'Metode Pesan',
      'rincian': 'Rincian',
      'total_belanja': 'Total Belanja',
      'biaya_antar': 'Biaya Antar',
      'dicount': 'Diskon',
      'onlyUseRekNumberAbove': 'App hanya menggunakan rekening diatas, selain rekening diatas adalah penipuan',
      'transfer_payment': 'Pembayaran Transfer',
      'kode_aktivasi': 'Kode Aktivasi',
      'text_upgrade': 'Silahkan tunjukkan QR Code di atas dan membayar di App terdekat atau jika sudah memiliki kartu member App bisa langsung menunjukkan ke kasir App terdekat.',
      'menunggu_pembayaran': 'Menunggu Pembayaran',
      'pesanan_diproses': 'Pesanan Diproses',
      'pesanan_dikirim': 'Pesanan Dikirim',
      'pesanan_selesai': 'Pesanan Selesai',
      'pesanan_batal': 'Pesanan Batal',
      'dipesan_pada': 'Dipesan Pada',
      'pesanan_tersedia_di': 'Pesanan tersedia di',
      'salin': 'Salin',
      'price': 'Harga',
      'siap_diambil': 'Siap Diambil',
      'review_product': 'Nilai Produk',
      'show_review': 'Lihat Penilaian',
      'hapus': 'Hapus',
      'tambah_alamat': 'Tambah Alamat',
      'address_detail': 'Detail Alamat',
      'pilih_lokasi_ini': 'Pilih Lokasi Ini',
      'rumah': 'Rumah',
      'jadikan_alamat_default': 'Jadikan Alamat Default',
      'simpan_alamat': 'Simpan Alamat',
      'primary': 'Utama',
      'pusatkan': 'Pusatkan',
      'edit_lagi': 'Edit Lagi',
      'berhasil_menyimpan_data': 'Berhasil Menyimpan Data',
      'text_contact_us': 'Silahkan hubungi kami jika ingin menanyakan sesuatu atau mendapat kendala',
      'old_password': 'Kata Sandi Lama',
      'new_password': 'kata Sandi Baru',
      'new_password_confirmation': 'Konfirmasi Kata Sandi Baru',
      'berhasil_merubah_password': 'Berhasil Merubah Kata Sandi',
      'keranjang_belanja_anda': 'Keranjang Belanja Anda',
      'belanja_lagi': 'Belanja Lagi',
      'keranjang_belanja_kosong': 'Keranjang Belanja Kosong',
      'belanja_sekarang': 'Belanja Sekarang',
      'tulis_catatan': 'Tulis Catatan',
      'pilih_metode_pembayaran': 'Metode Pembayaran',
      'diskon_ongkir': 'Diskon Ongkir',
      'diambil_pada': 'Diambil Pada',
      'sold_out': 'Stock Habis',
      'text_non_member': 'Daftarkan akun anda untuk dapat melakukan pembelian didalam aplikasi',
      'pilih_metode_pemesanan': 'Pilih Metode Pemesanan',
      'ambil_ditoko': 'Ambil Ditoko',
      'dikirim': 'Dikirim',
      'text_daftar_outlet_tersedia_produk': 'Daftar Outlet Yang Menyediakan Produk',
      'lanjutkan': 'Lanjutkan',
      'yakin_hapus_produk_cart': 'Yakin akan menghapus produk ini dari keranjang?',
      'yuk_daftar_jadi_member': 'Yuk Daftar Jadi Member',
      'masuk_sebagai_tamu': 'Masuk Tanpa Login',
      'text_login_untuk_melanjutkan': 'Masuk dengan akun App untuk bisa menikamati fitur ini.',
      'next': 'Selanjutnya',
      'kalimat_ajakan_member': 'Promo hanya berlaku untuk member.\nYuk daftar menjadi member App, untuk bisa menikmati promo dan keuntungan lainnya.',
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
      'login': 'Login',
      'register': 'Register',
      'textLoginSosmedAndroid': 'You can also sign in using your\nFacebook or Google account',
      'textLoginSosmedIos': 'You can also log in using your\nApple, Facebook or Google account',
      'password': 'Password',
      'cannot_null': 'can\'t be null',
      'forgotPassword': 'Forgot password?',
      'klickHere': 'Click here',
      'inputYourEmail': 'Input your email',
      'success': 'Success',
      'failed': 'Failed',
      'loading': 'Loading...',
      'fullName': 'Full Name',
      'poneNumber': 'Phone Number',
      'tanggalLahir': 'Date Of Birth',
      'gender': 'Gender',
      'passwordConfirmation': 'Password Confirmation',
      'address': 'Address',
      'pria': 'Male',
      'wanita': 'Female',
      'pilihAkun': 'Choose Account From',
      'provinsi': 'Province',
      'kabupaten': 'City',
      'pilih': 'Choose',
      'home': 'Home',
      'promo': 'Promo',
      'transaction': 'Transaction',
      'profile': 'Profile',
      'more': 'More',
      'errorLocationPermission': 'This app requires location permissions',
      'discount': 'Discount',
      'product': 'Product',
      'cart': 'Cart',
      'notification': 'Notification',
      'what_you_find': 'What are you looking for?',
      'detail_product': 'Detail Product',
      'masa_berlaku': 'Validity period',
      'tersedia': 'Available',
      'deskripsi': 'Deskription',
      'clear': 'Clear',
      'keyword_history': 'Your search histories',
      'productSearchHistory': 'Your product histories',
      'no_item_found': 'No data found',
      'cari': 'Search',
      'detailPromo': 'Promo Detail',
      'detailBerita': 'News Detail',
      'promoZoneCode': 'PROMOTION - Only applies to App area ',
      'promoZoneAll': 'PROMOTION - Valid for all App throughout Indonesia',
      'findPromoProduct': 'Find product promo',
      'findDiscountProduct': 'Find product discount',
      'findProduct': 'Find product',
      'productPromoMemberOnly': 'Product Promo Member Only',
      'urutkan': 'Sort',
      'category': 'Category',
      'filter': 'Filter',
      'cariProduct': 'Find product...',
      'rangeHarga': 'Price Range',
      'terapkan': 'Apply',
      'batal': 'Cancel',
      'maxPrice': 'Max Price',
      'minPrice': 'Min Price',
      'aturUlang': 'Reset',
      'Popular': 'Popular',
      'Terbaru': 'Newest',
      'Rating': 'Rating',
      'HargaTrendah': 'Lowest Price',
      'HargaTertinggi': 'Highest Price',
      'sk': 'Terms & Conditions',
      'activation': 'Activation',
      'activationPending': 'Activation on process',
      'memberExpired': 'The active period has expired',
      'activationReject': 'Activation rejected',
      'save': 'Save',
      'camera': 'Camera',
      'galery': 'Galery',
      'done': 'Done',
      'needAccessCamera': 'Needed camera access',
      'needAccessGalery': 'Needed gallery access',
      'uploading': 'Uploading',
      'success_upload': 'Upload Success',
      'light': 'Light',
      'dark': 'Dark',
      'news_n_promo': 'News & Promo',
      'transaction_sub': 'New transaction(s)',
      'news_n_promo_sub': 'Find news and promos here',
      'branch_outlet': 'Branch Outlet',
      'branch_outlet_sub': 'Branch outlet',
      'pesan': 'Message',
      'pesan_sub': 'Message(s) unread',
      'address_book': 'Delivery Address List',
      'address_book_sub': 'Delivery address list',
      'critics_n_sugest': 'Critics & Suggest',
      'critics_n_sugest_sub': 'Give advice & criticism about our service',
      'faq': 'FAQ',
      'faq_sub': 'Frequently Asked Questions',
      'change_password': 'Change Password',
      'change_password_sub': 'Change your account password',
      'logout': 'Logout',
      'logout_sub': 'Are you sure want to logout?',
      'contact_us': 'Contact Us',
      'contact_us_sub': 'Contact us',
      'about': 'About',
      'about_sub': 'Information about',
      'news': 'News',
      'gotOutlet': 'Go To The Outlet',
      'addToCart': 'Add to cart',
      'cantTrxOnline': 'Sorry, online transactions are not yet available in your area',
      'conversation': 'Conversation',
      'title': 'Title',
      'send': 'send',
      'type_message': 'Type a message',
      'readed': 'Read',
      'pesanBaru': 'New Message',
      'baru': 'New',
      'proses': 'Process',
      'berhasil': 'Finish',
      'and_x_other_item': 'and x other item(s)',
      'orders_shipped_from': 'Orders shipped from',
      'jumlah': 'Quantity',
      'transaction_detail': 'Transaction Detail',
      'alamat_pengiriman': 'Shipping Address',
      'information': 'Information',
      'tagihan': 'Bill',
      'total_bayar': 'Total Cost',
      'metode_pembayaran': 'Payment Method',
      'metode_pesan': 'Order Method',
      'rincian': 'Detail',
      'total_belanja': 'Shopping Price',
      'biaya_antar': 'Shipping Cost',
      'dicount': 'Discount',
      'onlyUseRekNumberAbove': 'App only uses the above account, other than the account above, it is fraudulent',
      'transfer_payment': 'Transfer Payment',
      'kode_aktivasi': 'Activation Code',
      'text_upgrade': 'Please show the QR Code above and pay at the nearest App or if you already have a App member card can immediately show it to the nearest App cashier.',
      'menunggu_pembayaran': 'Waiting for payment',
      'pesanan_diproses': 'Orders Processed',
      'pesanan_dikirim': 'Orders Shipped',
      'pesanan_selesai': 'Order Completed',
      'pesanan_batal': 'Order Cancel',
      'dipesan_pada': 'Ordered On',
      'pesanan_tersedia_di': 'Orders available at',
      'salin': 'Copy',
      'price': 'Price',
      'siap_diambil': 'Ready To Pickup',
      'review_product': 'Review Product',
      'show_review': 'Show Review',
      'hapus': 'Delete',
      'tambah_alamat': 'Add Address',
      'address_detail': 'Address Detail',
      'pilih_lokasi_ini': 'Choose This Location',
      'rumah': 'Home',
      'jadikan_alamat_default': 'Set As Default Address',
      'simpan_alamat': 'Save Address',
      'primary': 'Primary',
      'pusatkan': 'Center',
      'edit_lagi': 'Edit Again',
      'berhasil_menyimpan_data': 'Successfully Save Data',
      'text_contact_us': 'Please contact us if you have any questions or problems',
      'old_password': 'Old Password',
      'new_password': 'New Password',
      'new_password_confirmation': 'Confirmation New Password',
      'berhasil_merubah_password': 'Success Change Password',
      'keranjang_belanja_anda': 'Your Shopping Cart',
      'belanja_lagi': 'Shopping Again',
      'keranjang_belanja_kosong': 'Shopping Cart Empty',
      'belanja_sekarang': 'Shop Now',
      'tulis_catatan': 'Write Notes',
      'pilih_metode_pembayaran': 'Payment Method',
      'diskon_ongkir': 'Shipping Discount',
      'diambil_pada': 'Taken On',
      'sold_out': 'Out Of Stock',
      'text_non_member': 'Register your account to be able to make purchases within the application',
      'pilih_metode_pemesanan': 'Select an Ordering Method',
      'ambil_ditoko': 'Pickup',
      'dikirim': 'Delivery',
      'text_daftar_outlet_tersedia_produk': 'List of Outlets That Provide Product',
      'lanjutkan': 'Next',
      'yakin_hapus_produk_cart': 'Are you sure you want to remove this product from your cart?',
      'yuk_daftar_jadi_member': 'Let\'s Register as a Member',
      'masuk_sebagai_tamu': 'Login as Guest',
      'text_login_untuk_melanjutkan': 'Log in with your App account to be able to enjoy this feature.',
      'next': 'Next',
      'kalimat_ajakan_member': 'Promo only applies to members.\nLet\'s register as a App member, to be able to enjoy promos and other benefits.',
    }
  };
}
