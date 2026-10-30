import 'package:batch_2/constants/app_assets.dart';
import 'package:batch_2/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: AppColors.primaryColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: .tab,
                  indicator: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: .circular(12)
                  ),
                    labelColor: Colors.white,
                    unselectedLabelColor: AppColors.primaryColor,
                    tabs: [
                  Tab(icon: Icon(Icons.all_inbox),text: "All",),
                  Tab(icon: Icon(Icons.mark_as_unread),text: "Unread",),
                  Tab(icon: Icon(Icons.groups),text: "Groups",),
                  Tab(icon: Icon(Icons.favorite),text: "Favorite",),
                ]),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Center(child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Abdullah"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),),
              Center(child: Image.asset(AppAssets.onBoarding1),),
              Center(child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Abdullah"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Abdullah"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Abdullah"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),),
              Center(child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Abdullah"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),),
            ]),
      ),
    );
  }
}
