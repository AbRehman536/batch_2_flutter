import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/models/product_model.dart';
import 'package:batch_2/utils/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<ProductModel> productList = [
    ProductModel(
        image: AppAssets.product1Image,
        title: "Fresh Fruits & Vegetable",
        color: Color(0xff53B175).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Cooking Oil & Ghee",
        color: Color(0xffF7A593).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Meat & Fish",
        color: Color(0xff53B175).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Bakery & Snacks",
        color: Color(0xffD3B0E0).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Fresh Fruits & Vegetable",
        color: Color(0xff53B175).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Cooking Oil & Ghee",
        color: Color(0xffF7A593).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Meat & Fish",
        color: Color(0xff53B175).withOpacity(0.1)),
    ProductModel(
        image: AppAssets.product1Image,
        title: "Bakery & Snacks",
        color: Color(0xffD3B0E0).withOpacity(0.1)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(
              title: "Find Products"
          )),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    mainAxisExtent: 200,
                  ),
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: .circular(18),
                        color: productList[index].color
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(productList[index].image.toString(),
                          width: 111,height: 74,),
                          SizedBox(height: 30,),
                          Text(productList[index].title.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725)
                          ),)
                        ],
                      ),
                    );
                },
                  ),
            )
          ],
        ),
      ),
    );
  }
}
