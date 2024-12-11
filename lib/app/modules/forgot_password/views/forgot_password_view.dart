import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:translator_app/app/const/App_strings.dart';

import '../../../const/appColors.dart';
import '../../../const/spaces.dart';
import '../../../widgets/my_button_widget.dart';
import '../../../widgets/my_text_field_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(2.w),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text: forgotPasswordTitle,
                  size: 20,
                  color: kteal,
                  textAlign: TextAlign.center,
                  weight: FontWeight.w500,
                ),
                Spaces.y1,
                MyText(
                  text: forgotDescription,
                  size: 12,
                  textAlign: TextAlign.center,
                  color: kQuaternaryColor,
                ),
                Spaces.y1,
                MyTextField(
                  hint: forgotEmailLabel,
                  marginBottom: 32,
                ),
                MyButton(
                  onTap: () {
                    Get.toNamed('/verify-account');
                  },
                  buttonText: 'Send',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}