import 'package:flutter/material.dart';
import 'package:task/app_colors/app_colors.dart';
import 'package:get/get.dart';
import 'package:task/screens/home_screen/home_screen.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => const HomeScreen(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 1000));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 21,
              right: 21,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/image3.png'),
                  Image.asset('images/image2.png')
                ],
              ),
            ),
            Center(child: Image.asset('images/logo.png')),
          ],
        ),
      ),
    );
  }
}
