import 'package:flutter/material.dart';
import 'package:login_screen_homework/utils/colors.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.tittle,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final String tittle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(23), color: color),
      child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tittle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.spedahTextColor),
              ),
            ],
          )),
    );
  }
}
