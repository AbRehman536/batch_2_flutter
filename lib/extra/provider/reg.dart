import 'package:batch_2/extra/parameters/get_screen.dart';
import 'package:batch_2/extra/provider/profile.dart';
import 'package:batch_2/extra/provider/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Reg Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Abdullah");
          userProvider.setEmail("abdullah@gmail.com");
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
        }, child: Text("Go to Get Screen")),
      ),
    );
  }
}
