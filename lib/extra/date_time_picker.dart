import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Date",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: .circular(12),
                border: Border.all(
                  color: Color(0xff838383),
                  width: 0.4
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(DateFormat.yMMMMEEEEd().format(selectedDate)),
                    IconButton(onPressed: (){
                      showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2126))
                          .then((val){
                            setState(() {
                              selectedDate = val!;
                            });
                      });
                    }, icon: Icon(Icons.calendar_month))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Time",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: .circular(12),
                border: Border.all(
                  color: Color(0xff838383),
                  width: 0.4
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    if(selectedTime != null)
                    Text(selectedTime!.format(context).toString())
                    else
                      Text("No Time Selected"),
                    IconButton(onPressed: (){
                      showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now())
                          .then((value){
                            setState(() {
                              selectedTime = value;
                            });
                      });
                    }, icon: Icon(Icons.timelapse))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
