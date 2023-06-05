import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/auth/sign_up/widgets/universal_widget.dart';
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
            icon: Padding(
              padding: EdgeInsets.only(
                  left: width * (18 / 375), right: height * (326 / 812)),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.textColor,
                size: 25,
              ),
            )),
      ),
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: height * (41 / 812),
                left: width * (28 / 375),
                right: width * (104 / 375)),
            child: const Text(
              "Create account",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: AppColors.txtColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * (16 / 812),
                left: width * (28 / 375),
                right: width * (80 / 375)),
            child: const Text(
              "Sign up to get started!",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.textColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * (16 / 812),
                left: width * (237 / 375),
                right: width * (28 / 375)),
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
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
                top: height * (28 / 812),
                left: width * (102 / 375),),
            child: Row(
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
                    const Text("Log in",style: TextStyle(color: AppColors.spedahTextColor),),
                    Container(
                      height: 1,
                      width: 52,
                      color: AppColors.loginColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
