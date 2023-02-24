import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screens/home_screen/home_screen.dart';
import 'package:task/screens/launch_screen/launch_screen.dart';

import 'app_colors/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LaunchScreen()),
        GetPage(name: '/home_screen', page: () => const HomeScreen()),
      ],
    );
  }
}
