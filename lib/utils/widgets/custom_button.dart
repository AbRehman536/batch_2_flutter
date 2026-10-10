import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnLabel;
  final VoidCallback onPressed;
  const CustomButton({super.key,
    required this.btnLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 353,height: 67,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: .circular(19),
          )
        ),
          onPressed: onPressed,
          child: Text(btnLabel,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),)),
    );
  }
}
