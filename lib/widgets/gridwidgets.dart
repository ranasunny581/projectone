import 'package:flutter/material.dart';

class MygridWidgets extends StatefulWidget {
  const MygridWidgets({super.key});

  @override
  State<MygridWidgets> createState() => _MygridWidgetsState();
}

class _MygridWidgetsState extends State<MygridWidgets> {
  Widget Mycont() => GestureDetector(
        onTap: () {
          print("Clicked");
        },
        child: Container(
          height: 200,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: Text(
            "Click ME",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      );

  Widget Mymap() => SizedBox(
        height: 200,
        width: 200,
        child: GridPaper(
          color: Colors.pink,
          divisions: 1,
          interval: 100,
          subdivisions: 10,
        ),
      );

  Widget MyGridTiles() => SizedBox(
        width: 200,
        height: 200,
        child: GridTile(
          // header: Container(
          //   height: 40,
          //   child: Text(
          //     "Master Blaster Sachin",
          //     style: TextStyle(color: Colors.white, fontSize: 20),
          //   ),
          // ),
          header: GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text("Master Blaster"),
            trailing: Icon(Icons.menu),
          ),
          child: Image.network(
            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSLSfRTce6vQU6s83HUOgd7b6PCuWUAW0SSgHcxVP97N2H7iV3j",
            fit: BoxFit.cover,
          ),
          footer: Container(
            height: 40,
            child: Text(
              "We miss you all",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.builder(
          itemCount: 20,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GridTile(
              header: GridTileBar(
                backgroundColor: Colors.black45,
                leading: Icon(Icons.person),
                title: Text("Master Blaster $index"),
                trailing: Icon(Icons.menu),
              ),
              child: Image.network(
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSLSfRTce6vQU6s83HUOgd7b6PCuWUAW0SSgHcxVP97N2H7iV3j",
                fit: BoxFit.cover,
              ),
              footer: Container(
                height: 40,
                child: Text(
                  "We miss you all",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          })
    );
  }
}
