import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/home/on_boarding/register.dart';
import 'package:login_screen_homework/utils/colors.dart';
import 'package:login_screen_homework/utils/images.dart';

import '../../widgets/button.dart';
import 'login.dart';

class Spedah extends StatelessWidget {
  const Spedah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Spedah",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: AppColors.white),
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFCA42), shape: BoxShape.circle),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(AppImages.bike,
                  height: 0.45 * MediaQuery.of(context).size.height),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Let’s \nget started",
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Everything start from here",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * (48 / 812),vertical: 8),
            child: Button(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const Login();
                  }),
                );
              },
              tittle: "Log in",
              color: AppColors.loginColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * (48 / 812),vertical: 8),
            child: Button(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Register();
                }));
              },
              tittle: "Sign up",
              color: AppColors.signColor,
            ),
          )
        ],
      ),
    );
  }
}
