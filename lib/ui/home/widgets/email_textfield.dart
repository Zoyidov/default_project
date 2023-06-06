import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    required this.type,
    required this.hintText,
    this.isPassword = false,
    required this.icon,
  }) : super(key: key);

  final TextInputType type;
  final String hintText;
  final String icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.whiteColor,
          ),
          obscureText: isPassword,
          keyboardType: type,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textField,
            prefixIcon: Image.asset(
              icon,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.exampleColor,
            ),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(width: 1, color: AppColors.textField)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide:
                const BorderSide(width: 1, color: AppColors.trueColor)),
          ),
        ),
      ],
    );
  }
}