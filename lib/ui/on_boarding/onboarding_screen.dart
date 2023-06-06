import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/home/widgets/cycle.dart';
import 'package:login_screen_homework/ui/utils/images.dart';
import 'package:login_screen_homework/ui/welcome/welcome_screen.dart';

import '../utils/colors.dart';

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: width * (59 / 375), left: width * (17 / 375)),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.colorOfButton),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const WelcomeScreen();
                        }),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.whiteColor,
                      size: 25,
                    )),
              ),
              const SizedBox(width: 60,),
              const Text(
                "Детали заказа",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: height*(53/812),right: 16),
            child: const GlobalInputWidget(image: AppImages.smBurger, title: "Чикен Бургер", subTitle: "Изящный бургер", score: "₽160", iconPlus: AppImages.plus, number: "1", iconMinus: AppImages.minus),
          ),
          Padding(
            padding: EdgeInsets.only(top: height*(21/812),right: 16),
            child: const GlobalInputWidget(image: AppImages.drink, title: "Картошка Фри", subTitle: "Хрустят отлично", score: "₽100", iconPlus: AppImages.plus, number: "1", iconMinus: AppImages.minus),
          ),
          Padding(
            padding: EdgeInsets.only(top: height*(21/812),right: 16),
            child: const GlobalInputWidget(image: AppImages.xrust, title: "Молочный", subTitle: "Отлично подойдет", score: "₽120", iconPlus: AppImages.plus, number: "1", iconMinus: AppImages.minus),
          ),


          // backgroundColor: AppColors.whiteColor,
        ]),
      ),
      backgroundColor: AppColors.blackColor,
    );
  }
}
