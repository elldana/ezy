import 'dart:ui';

import 'package:flutter/material.dart';
import '../utils/AppColors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool outline;
  final bool filled;
  final double width;
  final double padding;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.outline = true,
    this.filled = false,
    this.width = double.infinity,
    this.padding = 15,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 16
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool shouldFill = filled || !outline;

    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: shouldFill ? AppColors.primary : AppColors.white,
          backgroundColor: shouldFill ? AppColors.white : Colors.transparent,
          side: BorderSide(color: AppColors.white, width: shouldFill ? 0 : 1),
          padding: EdgeInsets.symmetric(vertical: padding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: shouldFill ? AppColors.primary : AppColors.white,
          ),
        ),
      ),
    );
  }
}