import 'package:flutter/material.dart';

class MyDatepicker extends StatefulWidget {
  const MyDatepicker({super.key});

  @override
  State<MyDatepicker> createState() => _MyDatepickerState();
}

class _MyDatepickerState extends State<MyDatepicker> {

  DateTime selecteddate=DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async{
                  DateTime? seldate=await showDatePicker(
                    cancelText:"Go back" ,
                      confirmText: "Book My Appointment",
                      context: context,
                      initialDate: selecteddate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2024));

                  if(seldate==null){
                    print("No date selected");
                  }
                  else
                    {
                      setState(() {
                        selecteddate=seldate;
                      });
                    }

                },
                child: Text("Choose")),
            SizedBox(
              height: 30,
            ),
            Text(
              "Date $selecteddate",
              style: TextStyle(fontSize: 30, color: Colors.teal),
            )
          ],
        ),
      ),
    );
  }
}
