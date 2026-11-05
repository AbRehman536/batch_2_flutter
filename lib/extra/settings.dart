import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ///Cupertino Switch
  bool isSwitchOn = false;
  bool isSwitchOff = false;
  ///Slider
  double currentValue = 20;
  ///Drop down
  List<String> courseList = [
    "Flutter", "Web" , "Graphics", "Marketing" , "SQA"
  ];
  String? selectedCourse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(isSwitchOff ? Icons.notification_add : Icons.notifications_off),
              title: Text("Notifications"),
              subtitle: Text(isSwitchOff ? "ON" : "OFF"),
              trailing:  CupertinoSwitch(
                  value: isSwitchOff,
                  onChanged: (val){
                    setState(() {
                      isSwitchOff = val;
                    });
                  }),
            ),
            ListTile(
              leading: Icon(isSwitchOn ? Icons.wifi : Icons.wifi_off_sharp),
              title: Text("WIFI"),
              subtitle: Text(isSwitchOn ? "ON" : "OFF"),
              trailing:  CupertinoSwitch(
                  value: isSwitchOn,
                  onChanged: (val){
                    setState(() {
                      isSwitchOn = val;
                    });
                  }),
            ),
            if(isSwitchOn == true)
              Center(child: Text("Wifi is ON"),),
            SizedBox(height: 10,),
            Slider(
                value: currentValue,
                min: 0, max: 100,
                divisions: 100,
                label: currentValue.round().toString(),
                onChanged: (value){
                  setState(() {
                    currentValue = value;
                  });
                }),
            SizedBox(height: 10,),
            DropdownButtonFormField(
              hint: Text("Select Course"),
                value: selectedCourse,
                items: courseList.map((courses){
                  return DropdownMenuItem(
                    value: courses,
                      child: Text(courses));
                }).toList(),
                onChanged: (val){
                  setState(() {
                    selectedCourse = val;
                  });
                }),
            Pinput(
              length: 6,
              showCursor: true,
              onCompleted: (value){
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
