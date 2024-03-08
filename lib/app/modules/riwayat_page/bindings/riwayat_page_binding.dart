import 'package:get/get.dart';

import '../controllers/riwayat_page_controller.dart';

class RiwayatPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatPageController>(
      () => RiwayatPageController(),
    );
  }
}
