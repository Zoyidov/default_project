import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_homework/ui/auth/sign_up/widgets/universal_widget.dart';
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
                "Welcome back",
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
                "Enter your credential to continue",
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
            Padding(
              padding: EdgeInsets.only(
                  top: height * (16 / 812),
                  left: width * (237 / 375),),
                  // right: width * (28 / 375)),
              child: const Text(
                "Forgot password?",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.txtColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * (48 / 812),
              ),
              child: Button(
                tittle: "Log in",
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
                  top: height * (145 / 812),
                  left: width * (86 / 375),
                  ),
              child: Row(
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
                      const Text("Sing up",style: TextStyle(color: AppColors.spedahTextColor),),
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
        ));
  }
}
