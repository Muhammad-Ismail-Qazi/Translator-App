import 'package:get/get.dart';

import '../controllers/varify_account_controller.dart';

class VarifyAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VarifyAccountController>(
      () => VarifyAccountController(),
    );
  }
}
