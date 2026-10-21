import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final double price;
  const CustomContainer({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248,
      width: 173,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: .circular(18),
        border: Border.all(
          color: Color(0xffE2E2E2),
          width: 1
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Align(
                alignment: .center,
                child: Image.asset(image,width: 80,height: 80,)),
            SizedBox(height: 5,),
            Text(title, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),),
            SizedBox(height: 5,),
            Text("$desc, Price", style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Colors.grey
            ),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("\$$price", style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                ),),
                FloatingActionButton.small(
                  elevation: 0,
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: (){},
                  child: Icon(Icons.add),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
