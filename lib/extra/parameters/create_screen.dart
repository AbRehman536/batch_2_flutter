import 'package:batch_2/extra/parameters/get_screen.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> GetScreen(
            name : "Abdullah Rehman",
            email : "abdullah@gmail.com"
          )));
        }, child: Text("Go to Get Screen")),
      ),
    );
  }
}
