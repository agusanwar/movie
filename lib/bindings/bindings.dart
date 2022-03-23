import 'package:get/get.dart';
import 'package:movieapp/controller/reservation_controller.dart';
import 'package:movieapp/controller/saved_controller.dart';

import '../controller/animation_controller.dart';
import '../controller/card_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerCard());
    Get.lazyPut(() => ControllerAnimation());
    Get.put(ControllerReservation());
    Get.put(ControllerSaved());
  }
}
