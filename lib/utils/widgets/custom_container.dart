import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;
  const CustomContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      height: 248,
      decoration: BoxDecoration(
        borderRadius: .circular(18),
        color: AppColors.secondaryColor,
        border: Border.all(
          color: Color(0xffE2E2E2),
          width: 1
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(image,width: 60,height: 60,)),
            Text(title, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
            Text("$description, Price", style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),),
            Row(
             mainAxisAlignment: .spaceBetween,
              children: [

                Text("\$$price", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                FloatingActionButton.small(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.secondaryColor,
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
