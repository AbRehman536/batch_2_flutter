import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String hint;
  final Widget? suffix;
  final Widget? prefix;
  const CustomTextField({
    super.key, this.label, required this.hint, this.suffix, this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.secondaryColor,
        filled: true,
        //label: Text(label!),
        hint: Text(hint),
        suffixIcon: suffix,
        prefixIcon: prefix,
        // border: OutlineInputBorder(
        //   borderRadius: .circular(15),
        //   borderSide: .none
        // )
      ),
    );
  }
}
