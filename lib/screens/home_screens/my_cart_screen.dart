import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/models/cartModel.dart';
import 'package:batch_2/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../utils/widgets/custom_appBar.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(title: "My Cart")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(10),
                       leading:  Image.asset(cartList[index].image.toString(),width: 70,),
                        title: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(cartList[index].title, style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16
                            ),),
                            Text("${cartList[index].weight}, Price", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey
                            ),),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: .circular(17),
                                  border: Border.all(
                                    color: Color(0xffF0F0F0),
                                    width: 1
                                  )
                                ) ,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.remove),
                                )),
                            SizedBox(width: 10,),
                            Text("1", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                            ),),
                            SizedBox(width: 10,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: .circular(17),
                                    border: Border.all(
                                        color: Color(0xffF0F0F0),
                                        width: 1
                                    )
                                ) ,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.add),
                                )),
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: .end,
                          children: [
                            Icon(Icons.close,size: 15,),
                            SizedBox(height: 10,),
                            Text("\$${cartList[index].price}", style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                            ),)
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },),
            ),
            CustomButton(btnLabel: "Go to Checkout", onPressed: (){})
          ],
        ),
      ),
    );
  }
}
