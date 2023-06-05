import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/auth/sign_up/widgets/universal_widget.dart';
import 'package:login_screen_homework/ui/home/on_boarding/login.dart';
import 'package:login_screen_homework/ui/home/on_boarding/spedah.dart';
import 'package:login_screen_homework/ui/widgets/apple_button.dart';
import 'package:login_screen_homework/utils/colors.dart';
import 'package:login_screen_homework/utils/images.dart';

import '../../auth/sign_up/widgets/email_input.dart';
import '../../widgets/button.dart';
import '../../widgets/google_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create account",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: AppColors.txtColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign up to get started!",
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
                type: TextInputType.text,
                hintText: "User name",
                icon: AppImages.user,
              ),
              const SizedBox(
                height: 24,
              ),
              const EmailInput(
                type: TextInputType.emailAddress,
                hintText: "Email or username",
                icon: AppImages.gmail,
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
              const SizedBox(
                height: 24,
              ),
              const UniversalInput(
                type: TextInputType.text,
                hintText: "Confirm password",
                isPassword: true,
                icon: AppImages.password,
                hide: AppImages.unhide,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * (24 / 812),
                ),
                child: Button(
                  tittle: "Sign up",
                  onTap: () {},
                  color: AppColors.loginColor,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: height * (16 / 812)),
                  child: AppleButton(
                      tittle: "Log in using Apple",
                      onTap: () {},
                      color: AppColors.appleColor,
                      icon: AppImages.apple)),
              Padding(
                  padding: EdgeInsets.only(top: height * (16 / 812)),
                  child: GoogleButton(
                      tittle: "Log in using Google",
                      onTap: () {},
                      color: AppColors.gButtonColor,
                      icon: AppImages.google)),
              SizedBox(
                height: height * (28 / 812),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already member?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.textColor),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: AppColors.spedahTextColor),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const Login();
                          }));
                        },
                      ),
                      Container(
                        height: 1,
                        width: 41,
                        color: AppColors.loginColor,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
