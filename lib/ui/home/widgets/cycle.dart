import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';

class GlobalInputWidget extends StatelessWidget {
  const GlobalInputWidget(
      {required this.image,
        required this.title,
        required this.subTitle,
        required this.score,
        required this.iconPlus,
        required this.number,
        required this.iconMinus,
        Key? key})
      : super(key: key);

 final String image;
 final String title;
 final String subTitle;
 final String score;
 final String iconPlus;
 final String iconMinus;
 final String number;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: height * (343 / 812),
      height: width * (96 / 375),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.textColor),
      child: Row(
        children: [
          Image.asset(image,width: width * (88/375),height:  height * (68/812),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: AppColors.whiteColor),),
              SizedBox(height: height * (10/812),),
              Text(subTitle,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: AppColors.exampleColor),),
              SizedBox(height: height * (10/812),),
              Text(score,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.whiteColor)),
            ],
          ),
          SizedBox(width: width * (24/375),),
          Center(
            child: Container(
              width: width * (90/375),
              height:  height * (34/812),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.blcColor,
              ),child: Column(
              children: [Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(iconPlus,width: width * (8/375),height: height * (16/812),),
                    SizedBox(width: width * (16/375),),
                    Text(number,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: AppColors.whiteColor),),
                    SizedBox(width: width * (16/375),),
                    SvgPicture.asset(iconMinus,width: width * (8/375),height: height * (16/812),),
                  ],
                ),
              )
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}