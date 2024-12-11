import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:translator_app/app/const/App_strings.dart';
import 'package:translator_app/app/widgets/my_button_widget.dart';
import 'package:translator_app/app/widgets/my_text_widget.dart';
import '../../../const/appColors.dart';
import '../../../const/spaces.dart';
import '../../../widgets/my_text_field_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                textAlign: TextAlign.center,
                size: 24.sp,
                color: kteal,
                weight: FontWeight.bold,
                text: loginTitle,
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
              Spaces.y2,
              MyText(
                onTap: () => Get.toNamed('/forgot-password'),
                text: 'Forgot Password?',
                size: 16,
                weight: FontWeight.w500,
                paddingBottom: 24,
                color: kteal,
                textAlign: TextAlign.right,
              ),
              Spaces.y2,
              MyButton(
                buttonText: loginButton,
                onTap: () {},
              ),
              Spaces.y3,
              GestureDetector(
                onTap: () {
                  Get.toNamed('/profile'); // Navigate to signup screen
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: noAccountButton, // Regular text
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Sign Up', // The text that will be tappable
                        style: TextStyle(
                            color: kteal,
                            fontWeight: FontWeight.bold), // Tappable text style
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(
                                '/signup'); // Navigate to signup screen when tapped
                          },
                      ),
                    ],
                  ),
                ),
              ),
              Spaces.y1,
              MyText(
                text: 'or',
                size: 18.sp,
                color: kQuaternaryColor,
                textAlign: TextAlign.center,
              ),
              BorderButton(
                buttonText: googleText,
                onTap: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red, // Set the icon color to red
                ),
              ),
              Spaces.y1,
              BorderButton(

                  buttonText: appleText,
                  onTap: () {},
                  icon: const FaIcon(FontAwesomeIcons.apple)),


            ],
          ),
        ),
      ),
    );
  }
}