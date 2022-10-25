import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controllers/list_controller.dart';
import 'package:getxapp/controllers/tap_controllers.dart';
import 'package:getxapp/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.put(ListController());

    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          width: double.maxFinite,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF89dad0)),
                          child: Center(
                              child: Text(
                            // controller.x.toString(),
                            "Total Value :${Get.find<TapController>().z}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          width: double.maxFinite,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF89dad0)),
                          child: Center(
                              child: Text(
                            // controller.x.toString(),
                            "Y Value :${Get.find<TapController>().y.value}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    Get.to(() => MyHomePage());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: Center(
                        child: Text(
                      // controller.x.toString(),
                      "X Value :${Get.find<TapController>().x}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(() => MyHomePage());
                    controller.increaseY();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text(
                      // controller.x.toString(),
                      "Increase Y",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(() => MyHomePage());
                    // controller.increaseY();
                    Get.find<TapController>().totalXY();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text(
                      // controller.x.toString(),
                      "Total : X+Y",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(() => MyHomePage());
                    // controller.increaseY();
                    Get.find<ListController>().setValues(controller.z);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text(
                      // controller.x.toString(),
                      "Add to List",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
