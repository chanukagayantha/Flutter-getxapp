import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controllers/list_controller.dart';
import 'package:getxapp/controllers/tap_controllers.dart';
import 'package:getxapp/first_page.dart';
import 'package:getxapp/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<TapController>(
                  builder: (_) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF89dad0)),
                      child: Center(
                          child: Text(
                        controller.x.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    controller.increaseX();
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
                      "Tap",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => FirstPage());
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
                      "Go to First Page",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SecondPage());
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
                      "Second Page",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Obx(
                  () => GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF89dad0)),
                      child: Center(
                          child: Text(
                        listController.list.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
