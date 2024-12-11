import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:translator_app/app/const/App_strings.dart';
import '../../../const/appColors.dart';
import '../../../const/spaces.dart';
import '../../../widgets/common_image_view_widget.dart';
import '../../../widgets/my_button_widget.dart';
import '../../../widgets/my_text_widget.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          CommonImageView(
            imagePath: 'assets/images/bg.png',
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
            radius: 0.0,
          ),
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyText(
                  text: roleText,
                  size: 20.sp,
                  letterSpacing: 1.5,
                  weight: FontWeight.bold,
                  color: kwhite,
                ),
                Spaces.y3,
                MyButton(
                    buttonText: patientButton,
                    onTap: () => Get.toNamed('/login')),
                Spaces.y2,
                MyButton(
                    buttonText: translatorButton,
                    onTap: () => Get.toNamed('/login')),
                Spaces.y2,

              ],
            ),
          ),
        ],
      ),
    );
  }
}