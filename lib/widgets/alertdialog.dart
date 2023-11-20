import 'package:flutter/material.dart';
class Myalertdialog extends StatelessWidget {
  const Myalertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(onPressed: () {
        showDialog(context: context, builder: (context)=>AlertDialog(

          title: Text("Confirmation !!"),
          content: Text("Do you want to delete"),
          contentPadding: EdgeInsets.all(20),
          actions: [
            TextButton(onPressed: (){

          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Operation Failed"),
                backgroundColor: Colors.red,
                )
          );
        }, child: Text("ok")),
            ElevatedButton(onPressed: (){
              //process
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Successfully deleted"),
                backgroundColor: Colors.green,
                action: SnackBarAction(
                  label: "Undo",
                  onPressed: (){
                    //undo
                  },
                ),)
              );
              Navigator.pop(context);
            }, child: Text("Delete"))
          ],
        )
        );
      },child: Text("click me"),
      ),
    );


  }
}
