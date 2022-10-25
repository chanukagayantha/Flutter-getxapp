import 'package:get/get.dart';
import 'package:getxapp/controllers/list_controller.dart';
import 'package:getxapp/controllers/tap_controllers.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
