import 'package:batch_2/constants/app_colors.dart';
import 'package:batch_2/extra/date_time_picker.dart';
import 'package:batch_2/screens/home_screens/explore.dart';
import 'package:batch_2/screens/home_screens/favorite.dart';
import 'package:batch_2/screens/home_screens/home_scren.dart';
import 'package:batch_2/screens/home_screens/my_cart_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    ExploreScreen(),
    MyCartScreen(),
    FavoriteScreen(),
    DateTimePickerScreen()
  ];
  int selectedScreen = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 16,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w900,
          ),
          iconSize: 20,
          onTap: (value){
          setState(() {
            selectedScreen = value;
          });
          },
          currentIndex: selectedScreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.manage_search_sharp), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
