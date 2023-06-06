import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ButtonOpen extends StatelessWidget {
  const ButtonOpen({
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
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(22), color: color),
      child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 13,),
              Text(
                tittle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor),
              ),
            ],
          )),
    );
  }
}