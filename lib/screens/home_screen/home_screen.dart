import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/app_colors/app_colors.dart';
import 'package:task/utils/helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with Helper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset('images/uploadPage_image.png'),
          const SizedBox(
            height: 41,
          ),
          Center(
              child: Text(
            'Upload \n Histopathological image',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          )),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Center(
                child: Text(
              'You can upload the Histopathological Image on this page to see if there is a breast cancer or not.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor.withOpacity(0.6),
              ),
            )),
          ),
          const Spacer(),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primaryColor)),
              onPressed: () {
                showCircularSeekBar(context);
                Future.delayed(
                  const Duration(milliseconds: 1200),
                  () {
                    Navigator.pop(context);
                    showMyDialog(context);
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.2, vertical: 14),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.cloud_upload_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Upload',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )),

             
          const SizedBox(
            height: 64,
          )
        ],
      ),
    );
  }
}
