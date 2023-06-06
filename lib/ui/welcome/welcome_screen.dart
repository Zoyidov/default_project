import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/home/widgets/email_textfield.dart';
import 'package:login_screen_homework/ui/home/widgets/global_textfield.dart';
import 'package:login_screen_homework/ui/home/widgets/social.dart';
import 'package:login_screen_homework/ui/on_boarding/onboarding_screen.dart';
import 'package:login_screen_homework/ui/utils/colors.dart';
import 'package:login_screen_homework/ui/utils/images.dart';

import '../home/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: AppColors.backColor,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.burger),
                // Update image asset path here
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.88), // Adjust opacity as needed
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * (103 / 812),
                  left: width * (9 / 375),
                ),
                child: const Text(
                  "Burger Bar",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 52,
                      fontFamily: 'ARCENA'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * (28 / 812),
                    left: width * (45 / 375),
                    right: width * (45 / 375)),
                child: const Text(
                  "Войдите в свой профиль",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * (1 / 812),
                    left: width * (89 / 375),
                    right: width * (89 / 375)),
                child: const Text(
                  "Войдите, чтобы продолжить",
                  style: TextStyle(
                      color: AppColors.exampleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: height * (48 / 812),
                            left: width * (25 / 375),
                            right: width * (25 / 375)),
                        child: const EmailInput(
                            type: TextInputType.emailAddress,
                            hintText: "example@gmail.com",
                            icon: AppImages.send)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * (70 / 812),
                        left: width * (25 / 375),
                        right: width * (25 / 375)),
                    child: const UniversalInput(
                      type: TextInputType.text,
                      hintText: ' ',
                      icon: AppImages.clan,
                      hide: AppImages.unhide,
                      isPassword: true,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: height*(100/375)),
                      child: const Text(
                        "Или продолжите с помощью  ",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * (276 / 812),
                            left: width * (25 / 375)),
                        child: SizedBox(
                            height: height * (56 / 812),
                            width: width * (153 / 375),
                            child: Button(
                              tittle: "Facebook",
                              onTap: () {},
                              color: AppColors.textField,
                              icon: AppImages.facebook,
                            )),
                      ),
                      // const SizedBox(
                      //   width: 20,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * (276 / 812),
                          left: width*(19/375),
                        ),
                        child: SizedBox(
                            height: height * (56 / 812),
                            width: width * (153 / 375),
                            child: Button(
                              tittle: "Google",
                              onTap: () {},
                              color: AppColors.textField,
                              icon: AppImages.google,
                            )),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: height*(376/812)),
                      child: const Text(
                        "Забыли пароль?",
                        style: TextStyle(
                            color: AppColors.textOfField,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[ Padding(
                      padding: EdgeInsets.only(
                        top: height * (450 / 812),
                        left: width*(24/375)
                      ),
                      child: SizedBox(
                          height: height * (48 / 812),
                          width: width * (327 / 375),
                            child: ButtonOpen(
                              tittle: "Войти",
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return const Book();
                                  }),
                                );
                              },
                              color: AppColors.colorOfButton,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}