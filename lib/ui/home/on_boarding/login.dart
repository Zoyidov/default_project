import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_homework/ui/auth/sign_up/widgets/universal_widget.dart';
import 'package:login_screen_homework/ui/home/on_boarding/register.dart';
import 'package:login_screen_homework/ui/home/on_boarding/spedah.dart';
import 'package:login_screen_homework/ui/widgets/apple_button.dart';
import 'package:login_screen_homework/utils/colors.dart';
import 'package:login_screen_homework/utils/images.dart';

import '../../auth/sign_up/widgets/email_input.dart';
import '../../widgets/button.dart';
import '../../widgets/google_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const Spedah();
                  }),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.textColor,
                size: 25,
              )),
        ),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: AppColors.txtColor),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * (16 / 812),
                      left: width * (237 / 375),
                      right: width * (28 / 375)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter your credential to continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                const EmailInput(
                  type: TextInputType.emailAddress,
                  hintText: "Email or username",
                  icon: AppImages.user,
                ),
                const SizedBox(
                  height: 24,
                ),
                const UniversalInput(
                  type: TextInputType.text,
                  hintText: "Password",
                  isPassword: true,
                  icon: AppImages.password,
                  hide: AppImages.unhide,
                ),
                SvgPicture.asset(AppImages.password),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColors.txtColor),
                    ),
                  ],
                ),
                Button(
                  tittle: "Log in",
                  onTap: () {},
                  color: AppColors.loginColor,
                ),
                AppleButton(
                    tittle: "Log in using Apple",
                    onTap: () {},
                    color: AppColors.appleColor,
                    icon: AppImages.apple),
                GoogleButton(
                    tittle: "Log in using Google",
                    onTap: () {},
                    color: AppColors.gButtonColor,
                    icon: AppImages.google),
                SizedBox(
                  height: height * (145 / 812),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.textColor),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Text(
                            "Sing up",
                            style: TextStyle(color: AppColors.spedahTextColor),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Register();
                            }));
                          },
                        ),
                        Container(
                          height: 1,
                          width: 52,
                          color: AppColors.loginColor,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
