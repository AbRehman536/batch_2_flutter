import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(
          AppAssets.splashLogo,
          width: 267.42,height: 68.61,),
      ),
    );
  }
}
