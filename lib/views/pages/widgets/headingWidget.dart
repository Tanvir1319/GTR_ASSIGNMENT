import 'package:flutter/material.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/common/reusable_text.dart';
import 'package:gtr_assignment/constants/app_constants.dart';


class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key, required this.text, required this.text1, this.onTap});

  final String text;
  final String text1;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(
          text: text,
          style: appstyle(20, Color(firstColor.value), FontWeight.w600),
        ),
        GestureDetector(
          onTap: onTap,
          child: ReusableText(
            text: text1,
            style: appstyle(15, Color(fontColor.value), FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
