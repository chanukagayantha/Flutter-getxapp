import '../controllers/list_controller.dart';
import '../controllers/tap_controllers.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
