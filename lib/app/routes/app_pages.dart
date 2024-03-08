import 'package:get/get.dart';

import 'package:brokoli/app/modules/home/bindings/home_binding.dart';
import 'package:brokoli/app/modules/home/views/home_view.dart';
import 'package:brokoli/app/modules/kirim_permintaan/bindings/kirim_permintaan_binding.dart';
import 'package:brokoli/app/modules/kirim_permintaan/views/kirim_permintaan_view.dart';
import 'package:brokoli/app/modules/navigation_bar/bindings/navigation_bar_binding.dart';
import 'package:brokoli/app/modules/navigation_bar/views/navigation_bar_view.dart';
import 'package:brokoli/app/modules/produk_page/bindings/produk_page_binding.dart';
import 'package:brokoli/app/modules/produk_page/views/produk_page_view.dart';
import 'package:brokoli/app/modules/profile_page/bindings/profile_page_binding.dart';
import 'package:brokoli/app/modules/profile_page/views/profile_page_view.dart';
import 'package:brokoli/app/modules/riwayat_page/bindings/riwayat_page_binding.dart';
import 'package:brokoli/app/modules/riwayat_page/views/riwayat_page_view.dart';
import 'package:brokoli/app/modules/ubah_password/bindings/ubah_password_binding.dart';
import 'package:brokoli/app/modules/ubah_password/views/ubah_password_view.dart';
import 'package:brokoli/app/modules/ubah_profile/bindings/ubah_profile_binding.dart';
import 'package:brokoli/app/modules/ubah_profile/views/ubah_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION_BAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PROFILE,
      page: () => UbahProfileView(),
      binding: UbahProfileBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PASSWORD,
      page: () => UbahPasswordView(),
      binding: UbahPasswordBinding(),
    ),
    GetPage(
      name: _Paths.KIRIM_PERMINTAAN,
      page: () => KirimPermintaanView(),
      binding: KirimPermintaanBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_BAR,
      page: () => NavigationBarView(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK_PAGE,
      page: () => ProdukPageView(),
      binding: ProdukPageBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT_PAGE,
      page: () => RiwayatPageView(),
      binding: RiwayatPageBinding(),
    ),
  ];
}
