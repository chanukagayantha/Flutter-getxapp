import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controllers/tap_controllers.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              GetBuilder<TapController>(builder: (_) {
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
              }),
              GestureDetector(
                onTap: () {
                  controller.decreaseX();
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
                    "Tap to Decrease",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ],
          )),
    );
  }
}
