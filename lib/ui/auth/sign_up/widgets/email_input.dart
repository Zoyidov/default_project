import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

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
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * (28 / 375)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.typeColor,
            ),
            obscureText: isPassword,
            keyboardType: type,
            decoration: InputDecoration(
              prefixIcon: Image.asset(
                icon,
              ),

              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.exampleColor,
              ),
              fillColor: AppColors.exampleColor,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                      width: 1, color: AppColors.exampleColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide:
                  const BorderSide(width: 1, color: AppColors.trueColor)),
            ),
          ),
        ],
      ),
    );
  }
}