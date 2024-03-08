import 'package:get/get.dart';

import '../controllers/kirim_permintaan_controller.dart';

class KirimPermintaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KirimPermintaanController>(
      () => KirimPermintaanController(),
    );
  }
}
