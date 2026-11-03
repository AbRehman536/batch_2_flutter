import 'package:batch_2/constants/app_colors.dart';
import 'package:batch_2/utils/widgets/custom_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../models/cartModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CartModel> cartList = [
    CartModel(
        image: AppAssets.bananaImage,
        title: "Bell Pepper Red",
        weight: "1Kg",
        price: 4.99),
    CartModel(
        image: AppAssets.bananaImage,
        title: "Egg Chicken Red",
        weight: "4pcs",
        price: 1.99),
    CartModel(
        image: AppAssets.bananaImage,
        title: "Bell Pepper Red",
        weight: "12pcs",
        price: 3.90),
    CartModel(
        image: AppAssets.bananaImage,
        title: "Ginger",
        weight: "250gm",
        price: 2.99),
  ];
  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLc0lC-dBmWUiP1_9uBxLBIG3Pb4cjLypVg9KJQxNJIw&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUj-ZoPQ-DgxR9v_eVs27lXc7Pn8xsqSO1rdOvq310es9S69NP2wVWYQ&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgXv2fZoRBiQfycZNvtjGS5EEv7VVgml9v_4fx2KNn-EdcDa1cqznGwrTv&s=10"
  ];
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CarouselSlider(
                  items: imageList.map((image){
                    return Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: .circular(12),
                        image: DecorationImage(
                            image: NetworkImage(image),
                        fit: BoxFit.cover)
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason){
                      setState(() {
                        selectedImage = index;
                      });
                    }
                  )),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Exclusive Offer", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("See all", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor
                  ),),
        
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 248,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cartList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CustomContainer(
                        image: cartList[index].image.toString(),
                        title: cartList[index].title.toString(),
                        desc: cartList[index].weight.toString(),
                        price: cartList[index].price.toDouble()),
                  );
                },),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Best Selling", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("See all", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor
                  ),),
        
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 248,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cartList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CustomContainer(
                        image: cartList[index].image.toString(),
                        title: cartList[index].title.toString(),
                        desc: cartList[index].weight.toString(),
                        price: cartList[index].price.toDouble()),
                  );
                },),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
