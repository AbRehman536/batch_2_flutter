import 'package:flutter/material.dart';

class GetScreen extends StatelessWidget {
  final String name;
  final String email;
  const GetScreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Screen"),
        backgroundColor: Colors.yellow,
        //leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name: $name",
              style: TextStyle(fontSize: 20),),
            Text("Email: $email",
              style: TextStyle(fontSize: 20),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GetScreen(
                  name : name,
                  email : email
              )));
            }, child: Text("Go to Get Screen")),
          ],
        ),
      ),
    );
  }
}
