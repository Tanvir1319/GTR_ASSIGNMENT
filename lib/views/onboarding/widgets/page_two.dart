import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/common/height_spacer.dart';
import 'package:gtr_assignment/common/reusable_text.dart';

import '../../../constants/app_constants.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(onboardColor.value),
      child: Column(
        children: [
          HeightSpacer(size: 60),
         
          
          Column(
            
            children: [
               Image.asset("assets/images/Get_Fast Delivery Service.png"),
              HeightSpacer(size: 110),
               Image.asset("assets/images/onboarding_img2.png"),
             
            ],
          ),
        ],
      ),
    );
  }
}