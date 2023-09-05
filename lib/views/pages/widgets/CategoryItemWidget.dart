import 'package:flutter/material.dart';
import 'package:gtr_assignment/constants/app_constants.dart';


class CategoryItemWidget extends StatelessWidget {
  final String CategoryItemName;
  final String image;
  VoidCallback onTap;

   CategoryItemWidget({
    super.key,
    required this.CategoryItemName,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Container(
                  
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(listViewColor.value),  
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(image, height: 60, width: 60,)
                ),
               
                Text(
                  CategoryItemName,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(fontColor.value),
                      letterSpacing: 0.6),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
