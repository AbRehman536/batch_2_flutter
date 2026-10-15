import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/constants/app_colors.dart';
import 'package:batch_2/models/listModel.dart';
import 'package:batch_2/utils/widgets/custom_appBar.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<ListModel> favoriteItems = [
    ListModel(
        image: AppAssets.canImage,
        title: "Sprite Can",
        ml: "325ml",
        price: 1.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Diet Coke",
        ml: "355ml",
        price: 1.99),
    ListModel(
        image: AppAssets.canImage,
        title: "Cola Cola Can",
        ml: "2L",
        price: 4.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Pepsi Can",
        ml: "355ml",
        price: 3.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Sprite Can",
        ml: "325ml",
        price: 1.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Diet Coke",
        ml: "355ml",
        price: 1.99),
    ListModel(
        image: AppAssets.canImage,
        title: "Cola Cola Can",
        ml: "2L",
        price: 4.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Pepsi Can",
        ml: "355ml",
        price: 3.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Sprite Can",
        ml: "325ml",
        price: 1.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Diet Coke",
        ml: "355ml",
        price: 1.99),
    ListModel(
        image: AppAssets.canImage,
        title: "Cola Cola Can",
        ml: "2L",
        price: 4.50),
    ListModel(
        image: AppAssets.canImage,
        title: "Pepsi Can",
        ml: "355ml",
        price: 3.50),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(title: "Favorite")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favoriteItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(favoriteItems[index].image.toString()),
                    title: Text(favoriteItems[index].title.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),),
                    subtitle: Text("${favoriteItems[index].ml.toString()}, Price"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("\$${favoriteItems[index].price.toString()}"),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  );
                },),
            ),
            Divider(),
            CustomButton(btnLabel: "Add All to Cart", onPressed: (){})
          ],
        ),
      ),
    );
  }
}
