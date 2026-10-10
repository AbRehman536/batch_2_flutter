import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/constants/app_colors.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
            children: [
              Image.asset(AppAssets.onBoarding,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,),
              Positioned(
                bottom: 50,
                left: 60,
                right: 60,
                child: Column(
                  children: [
                    Image.asset(AppAssets.carrotImage,width: 48,height: 56,),
                    Text("Welcome \n"
                        "to our store",
                    textAlign: .center,
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 48
                    ),),
                    Text("Ger your groceries in as fast as one hour",
                      style: TextStyle(
                          color: Color(0xffFCFCFCB2),
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),),
                    CustomButton(
                        btnLabel: "Get Started",
                        onPressed: (){})
                  ],
                ),
              ),
            ],
          )

    );
  }
}
