import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/extra/onBoardingModel.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: AppAssets.onBoarding1, title: "Order in Mobile App"),
    OnBoardingModel(image: AppAssets.onBoarding2, title: "Try on clothes store"),
    OnBoardingModel(image: AppAssets.onBoarding3, title: "Wear clothes with pleasure"),
  ];
  PageController pageController = PageController();
  int currentPage = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    currentPage = index;
                  });
                },
               // scrollDirection: Axis.vertical,
                controller: pageController,
                itemCount: onBoardingList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[index].image.toString(),
                        height: 500,),
                      Text(onBoardingList[index].title.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25
                        ),),

                    ],
                  );
                },),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  JumpingDotEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            ),
            CustomButton(btnLabel:
                currentPage == onBoardingList.length - 1 ? "Get Started" : "Next",
                 onPressed: (){
              if(currentPage == onBoardingList.length - 1){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Thank you")));
              }
              else{
                pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              }
            })
          ],
        ),
      )
    );
  }
}
