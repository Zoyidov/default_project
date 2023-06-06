import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.tittle,
    required this.onTap,
    required this.color, required this.icon,
  }) : super(key: key);

  final String tittle;
  final Color color;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: const EdgeInsets.symmetric(vertical: 1),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              const SizedBox(width: 12,),
              Text(
                tittle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteColor),
              ),
            ],
          )),
    );
  }
}