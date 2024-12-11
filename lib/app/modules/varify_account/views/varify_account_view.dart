import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import '../../../const/App_strings.dart';
import '../../../const/appColors.dart';
import '../../../const/app_fonts.dart';
import '../../../const/spaces.dart';
import '../../../widgets/my_button_widget.dart';
import '../../../widgets/my_text_widget.dart';
import '../controllers/varify_account_controller.dart';

class VarifyAccountView extends GetView<VarifyAccountController> {
  const VarifyAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    final DEFAULT_THEME = PinTheme(
      width: 40,
      height: 48,
      margin: EdgeInsets.zero,
      textStyle: TextStyle(
        fontSize: 20.sp,
        height: 0.0,
        fontWeight: FontWeight.w500,
        color: kSecondaryColor,
        fontFamily: AppFonts.boston,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: kBorderColor,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
    );
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
                  text: titleText,
                  size: 20,
                  color: kteal,
                  textAlign: TextAlign.center,
                  weight: FontWeight.w500,
                  paddingBottom: 16,
                ),
                MyText(
                  text: description,
                  size: 13.5,
                  textAlign: TextAlign.center,
                  color: kQuaternaryColor,
                  paddingBottom: 40,
                ),
                Pinput(
                  length: 6,
                  onChanged: (value) {},
                  pinContentAlignment: Alignment.center,
                  defaultPinTheme: DEFAULT_THEME,
                  focusedPinTheme: DEFAULT_THEME,
                  submittedPinTheme: DEFAULT_THEME,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  separatorBuilder: (index) {
                    return SizedBox(
                      width: 6.w,
                    );
                  },
                  onCompleted: (pin) => print(pin),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: resend,
                      color: kteal,
                      size: 18.sp,
                      weight: FontWeight.w500,
                    ),
                    MyText(
                      size: 18.sp,
                      text: notRecieved,
                      color: kteal,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                Spaces.y3,
                MyButton(
                  buttonText: buttonText,
                  onTap: () {
                    Get.toNamed('/change-password');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}