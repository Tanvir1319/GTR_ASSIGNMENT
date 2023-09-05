import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/common/height_spacer.dart';
import 'package:gtr_assignment/common/reusable_text.dart';

import '../../../constants/app_constants.dart';


class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(homeBg.value),
      child: Column(
        children: [
          HeightSpacer(size: 60),
         
          
          Column(
            
            children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    Text("Welcome to ",
               
                    style: appstyle(32, Color(fontColor.value), FontWeight.normal),
                    
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    Image.asset('assets/images/ubazar.png'),
                    SizedBox(
                      width: 30.w,
                    ),
                     Text("Application",
               
                style: appstyle(32, Color(fontColor.value), FontWeight.normal),
                
                ),
                  ],
                ),
              HeightSpacer(size: 110),
               Image.asset("assets/images/onboarding_img1.jpg"),
             
            ],
          )
        ],
      ),
    );
  }
}