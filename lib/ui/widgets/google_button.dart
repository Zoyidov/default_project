import 'package:flutter/material.dart';
import 'package:login_screen_homework/utils/colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton(
      {Key? key,
      required this.tittle,
      required this.onTap,
      required this.color,
      required this.icon})
      : super(key: key);

  final String tittle;
  final String icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width*(28/375),right: width*(28/375)),
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 67),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: color),
        child: InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Image.asset(
                    icon,
                    width: 23,
                    height: 23,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    tittle,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
