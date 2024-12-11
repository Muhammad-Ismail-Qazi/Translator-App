import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:translator_app/app/const/App_strings.dart';
import 'package:translator_app/app/const/appColors.dart';
import 'package:translator_app/app/widgets/custom_drop_down_widget.dart';
import 'package:translator_app/app/widgets/my_button_widget.dart';
import 'package:translator_app/app/widgets/my_text_field_widget.dart';
import 'package:translator_app/app/widgets/my_text_widget.dart';

import '../../../const/spaces.dart';
import '../../../widgets/common_image_view_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(2.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText(
                  size: 18.sp,
                  weight: FontWeight.bold,
                  color: kSecondaryColor,
                  text: profileText),
              Spaces.y3,
              CommonImageView(
                imagePath: 'assets/images/bg.png',
                height: 100,
                width: 100,
                radius: 100.0,
                // url: 'profileController.imagePath.value',
              ),
              Spaces.y2,
              MyTextField(
                hint: fistNameLabel,
              ),
              Spaces.y1,
              MyTextField(
                hint: lastNameLabel,
              ),
              Spaces.y1,
              MyTextField(
                hint: dobsLabel,
              ),
              Spaces.y1,
              CustomDropDown(
                hint: 'Gender',
                items: ['Gender', 'Male', 'Female'],
                onChanged: (value) {},
                selectedValue: 'Gender',
              ),
              Spaces.y1,
              Spaces.y3,
              MyButton(
                buttonText: saveButton,
                onTap: () {
                  Get.toNamed('/home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}