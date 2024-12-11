import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/appColors.dart';
import '../const/appColors.dart';
import '../const/appColors.dart';
import 'my_text_widget.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    required this.buttonText,
    required this.onTap,
    this.height = 48,
    this.textSize,
    this.weight,
    this.radius = 50.0,
    this.customChild,
    this.bgColor,
    this.textColor,
    this.mBottom,
    this.mTop,
  });

  final String buttonText;
  final VoidCallback onTap;
  double? height, textSize, radius;
  FontWeight? weight;
  Widget? customChild;
  Color? bgColor, textColor;
  double? mTop, mBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: mTop ?? 0, bottom: mBottom ?? 0),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff44D413),
              Color(0xff2A8A0B),
            ]

        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 16,
            color: kTertiaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: kPrimaryColor.withOpacity(0.1),
          highlightColor: kPrimaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(radius!),
          child: customChild ?? Center(
            child: MyText(
              text: buttonText,
              size: textSize ?? 15,
              weight: weight ?? FontWeight.w400,
              color: textColor ?? kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}





class BorderButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Widget? icon; // Fully customizable icon
  final Color borderColor;
  final Color textColor;
  final double height;
  final double radius;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  const BorderButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.icon,
    this.borderColor = Colors.teal,
    this.textColor = Colors.teal,
    this.height = 48,
    this.radius = 25,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(radius),
          child: Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 8), // Space between icon and text
                ],
                Text(
                  buttonText,
                  style: textStyle ??
                      TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}