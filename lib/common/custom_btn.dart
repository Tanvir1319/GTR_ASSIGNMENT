import 'package:flutter/material.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/common/reusable_text.dart';
import 'package:gtr_assignment/constants/app_constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.onTap});

  final String text;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          color: Color(fontColor.value),
          width: width,
          height: hieght * 0.065,
          child: Center(
            child: ReusableText(
                text: text,
                style: appstyle(
                    16, color ?? Color(onboardColor.value), FontWeight.w600)),
          ),
        ));
  }
}
