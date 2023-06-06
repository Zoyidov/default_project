import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';

class UniversalInput extends StatefulWidget {
  const UniversalInput({
    Key? key,
    required this.type,
    required this.hintText,
    this.isPassword = false,
    required this.icon,
    required this.hide,
  }) : super(key: key);

  final TextInputType type;
  final String hintText;
  final String icon;
  final String hide;
  final bool isPassword;

  @override
  _UniversalInputState createState() => _UniversalInputState();
}

class _UniversalInputState extends State<UniversalInput> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: height * (48 / 812),
                left: width * (25 / 375),
                right: width * (25 / 375))),
        TextField(

          textInputAction: TextInputAction.next,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.whiteColor,
          ),
          obscureText: !_passwordVisible && widget.isPassword,
          keyboardType: widget.type,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textField,
            prefixIcon: Image.asset(
              widget.icon,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
              icon: Image.asset(
                _passwordVisible ? AppImages.hide : widget.hide,
              ),
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.exampleColor,
            ),
            // Set the background color to white
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.textField,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.trueColor,
              ),
            ),
          ),),
      ],
    );
  }
}