import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtr_assignment/common/app_style.dart';
import 'package:gtr_assignment/common/reusable_text.dart';

import 'package:gtr_assignment/common/width_spacer.dart';
import 'package:gtr_assignment/constants/app_constants.dart';


class VerticalTile extends StatelessWidget {
  const VerticalTile({super.key, this.onTap,required this.image,required this.Bigtitle,required this.Smalltitle});

  final void Function()? onTap;
  final String image;
  final String Bigtitle;
  final String Smalltitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
     child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      height: hieght*0.15,
      width: width,
      color: Color(listViewColor.value),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  child:  Image.asset(image, height: 110, width: 80,)
                  ),
                  WidthSpacer(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: Bigtitle,
                        style: appstyle(16, Color(fontColor.value), FontWeight.normal)
                        ),
                      SizedBox(
                        width: width*0.5,
                        child: ReusableText(
                        text: Smalltitle,
                        style: appstyle(15, Color(fontColor.value), FontWeight.normal)
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Color(onboardColor.value),
                    child: Icon(Icons.arrow_forward_ios,
                    color: Color(arrowColor.value),
                    ),
                  ),
                ],
              ),
            ],
          ),
         
        ],
      ),
     ),
     );
  }
}
