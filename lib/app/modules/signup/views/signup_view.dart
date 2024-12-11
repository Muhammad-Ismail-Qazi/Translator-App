import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../const/App_strings.dart';
import '../../../const/appColors.dart';
import '../../../const/spaces.dart';
import '../../../widgets/my_button_widget.dart';
import '../../../widgets/my_text_field_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                size: 24.sp,
                color: kteal,
                weight: FontWeight.bold,
                text: signupTitle,
              ),
              Spaces.y3,
              MyTextField(
                label: emailLabel,
                hint: hintEmail,
                prefix: Icon(Icons.email, color: kgrey1),
              ),
              MyTextField(
                label: passwordLabel,
                hint: hintPassword,
                isObSecure: true,
                prefix: Icon(Icons.lock, color: kgrey1),
                suffix: IconButton(
                  icon: Icon(Icons.visibility, color: kgrey1),
                  onPressed: () {},
                ),
              ),
              MyTextField(
                label: confirmPasswordLabel,
                hint: hintPassword,
                isObSecure: true,
                prefix: Icon(Icons.lock, color: kgrey1),
                suffix: IconButton(
                  icon: Icon(Icons.visibility, color: kgrey1),
                  onPressed: () {},
                ),
              ),
              Spaces.y2,
              MyButton(
                buttonText: signupButton,
                onTap: () {},
              ),
              Spaces.y3,
              GestureDetector(
                onTap: () {
                  Get.toNamed('/login');
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: noAccountButton,
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(color: kteal, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed('/login');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}