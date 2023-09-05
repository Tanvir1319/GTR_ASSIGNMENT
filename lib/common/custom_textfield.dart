import 'package:flutter/material.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/constants/app_constants.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.controller, required this.hintText,  this.keyboardType, this.validator, this.suffixIcon, this.obscureText});

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(dectiveDotColor.value),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText?? false,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: appstyle(14, Color(dectiveDotColor.value), FontWeight.w500),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: 0.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Color(dectiveDotColor.value), width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0.5)),
          border: InputBorder.none,
        ),
        controller: controller,
        cursorHeight: 25,
        style: appstyle(14, Color(firstColor.value), FontWeight.w500),
        validator: validator,
      ),
    );
  }
}
