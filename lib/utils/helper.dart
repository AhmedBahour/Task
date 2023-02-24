import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/app_colors/app_colors.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

mixin Helper {
  Future<void> showCircularSeekBar(BuildContext context) async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shadowColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Stack(
            children: [
              SimpleCircularProgressBar(
                size: 200,
                animationDuration: 1,
                fullProgressColor: AppColors.primaryColor,
                progressColors: const [
                  AppColors.primaryColor,
                ],
                backColor: Colors.white,
                backStrokeWidth: 5,
                progressStrokeWidth: 5,
                mergeMode: true,
                onGetText: (double value) {
                  return Text('${value.toInt()}%',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ));
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AnimationLimiter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 1000),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Padding(
                    padding:
                        const EdgeInsets.only(top: 43, right: 50, left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'images/rectangle.png',
                          fit: BoxFit.fill,
                        ),
                        AnimationLimiter(
                          child: Column(
                            children: AnimationConfiguration.toStaggeredList(
                              duration: const Duration(milliseconds: 1000),
                              childAnimationBuilder: (widget) => SlideAnimation(
                                horizontalOffset: -100.0,
                                child: FadeInAnimation(
                                  child: widget,
                                ),
                              ),
                              children: const [
                                Divider(
                                  thickness: 3,
                                  color: AppColors.benginColor,
                                  indent: 1,
                                  endIndent: 1,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'The Result is:',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      AnimationLimiter(
                        child: Column(
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 1000),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: widget,
                              ),
                            ),
                            children: [
                              Text(
                                'Bengin',
                                style: GoogleFonts.inter(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.benginColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.grey.withOpacity(0.1)),
                      ),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: AppColors.malignantColor,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
