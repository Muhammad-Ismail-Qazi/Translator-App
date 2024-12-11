import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../const/App_strings.dart';
import '../../../const/appColors.dart';
import '../../../const/spaces.dart';
import '../../../widgets/my_button_widget.dart';
import '../../../widgets/my_text_field_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(2.w),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text: changePasswordTitle,
                  size: 18.sp,
                  color: kteal,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                Spaces.y3,
                MyTextField(
                  hint: newPasswordHint,
                  suffix: IconButton(
                      onPressed: () {}, icon: Icon(Icons.visibility)),
                ),
                MyTextField(
                  hint: confirmNewPasswordHint,
                  suffix: IconButton(
                      onPressed: () {}, icon: Icon(Icons.visibility)),
                ),
                Spaces.y3,
                MyButton(
                  onTap: () {
                    Get.toNamed('/login');
                  },
                  buttonText: changeButtonText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}