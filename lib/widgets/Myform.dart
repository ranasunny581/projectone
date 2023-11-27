import 'package:flutter/material.dart';

class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {

  final formkey=GlobalKey<FormState>();
  final namecontroller=TextEditingController();
  final agecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: namecontroller,
                  validator: (val){
                    if(val==null || val.isEmpty){
                      return 'Enter Name Please';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    label: Text("Name")
                  ),
                ),

                SizedBox(height: 15,),
                TextFormField(
                  controller: agecontroller,
                  validator: (val){
                    if(val==null || val.isEmpty){
                      return 'Enter Age Please';
                    }
                    if(int.parse(val)<18){
                      return "Age should be atleast 18";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your age",
                      label: Text("Age")
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  if(formkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:Text("Sucessfully Form Submitted") ));
                    namecontroller.clear();
                    agecontroller.clear();
                  }
                }, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
