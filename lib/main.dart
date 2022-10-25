import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/helper/init_dependency.dart';
import 'package:getxapp/my_home_page.dart';
import 'helper/init_controllers.dart' as di;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      title: 'Flutter GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
