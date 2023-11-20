import 'package:flutter/material.dart';
class Mycontainer extends StatelessWidget {
  int num;
   Mycontainer({super.key,required this.num});

  @override
  Widget build(BuildContext context) {
    return ListView(
       physics: AlwaysScrollableScrollPhysics(),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 100,
                height: 200,

                child: Badge(
                  backgroundColor: Colors.green,

                  label: Text(num.toString()),
                  child: Icon(Icons.notification_important,size: 25,),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,

                ),
              ),
              Banner(
                message: "25% off sale",
                location: BannerLocation.bottomEnd,
                color: Colors.teal,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  width: 100,
                  height: 200,
                  child: Text("New item arrived"),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 100,
                height: 200,
                child: Text("Charan"),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 100,
                height: 200,
                child: Text("Charan"),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 100,
                height: 200,
                child: Text("Charan"),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 100,
                height: 200,
                child: Text("Charan"),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
