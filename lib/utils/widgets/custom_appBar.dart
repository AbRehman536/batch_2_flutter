import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final Widget? leading;
  final String title;
  final Widget? icon;
  const CustomAppbar({
    super.key,
    this.leading,
    required this.title,
    this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      leading: leading,
      centerTitle: true,
      title: Text(title,style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xff181725)
      ),),
      actions: [
        ?icon
      ],
    );
  }
}
