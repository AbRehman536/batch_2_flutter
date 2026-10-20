import 'package:batch_2/utils/widgets/custom_container.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Exclusive Offer"),
                Text("See all")
              ],
            ),
            Flexible(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CustomContainer(
                        image: cartList[index].image.toString(),
                        title: cartList[index].title.toString(),
                        description: cartList[index].weight.toString(),
                        price: cartList[index].price),
                  );
                },),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Selling"),
                Text("See all")
              ],
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CustomContainer(
                        image: cartList[index].image.toString(),
                        title: cartList[index].title.toString(),
                        description: cartList[index].weight.toString(),
                        price: cartList[index].price),
                  );
                },),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Selling"),
                Text("See all")
              ],
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                    Container(
                      child:
                      Row(
                        children: [
                          Image.asset(cartList[index].image.toString(),width: 50,),
                          Text(cartList[index].title),
                        ],
                      ),
                    )
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
