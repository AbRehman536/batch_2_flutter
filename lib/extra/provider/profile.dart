import 'package:batch_2/extra/provider/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {

  const Profile({super.key,});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        backgroundColor: Colors.yellow,
        //leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name: ${userProvider.getName().toString()}",
              style: TextStyle(fontSize: 20),),
            Text("Email: ${userProvider.getEmail().toString()}",
              style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
