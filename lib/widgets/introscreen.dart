import 'package:flutter/material.dart';

List<Widget> widgets=[
  Container(color: Colors.pink,),
  Container(color: Colors.greenAccent,),
  Container(color: Colors.purpleAccent,),
];

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> with SingleTickerProviderStateMixin {

  late TabController tabController;
  int index=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(
        length: widgets.length,
        initialIndex: index,
        vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
           TabBarView(
               controller: tabController,
               children: widgets),
            Positioned(
              bottom: 50,
                child: TabPageSelector(
              controller: tabController,
              color: Colors.white,
                  selectedColor: Colors.orange,
            ))
          ],

        ),
        floatingActionButton: ButtonBar(
          children: [
            FloatingActionButton(
                child: Icon(Icons.navigate_next),
                onPressed: (){

              // if(index!=widgets.length){
              //
              // }
              // else
              //   {
              //
              //   }

              (index!=widgets.length-1)?index++:index=0;
              tabController.animateTo(index);
            })
          ],
        ),
      ),
    );
  }
}
