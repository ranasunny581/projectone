import 'package:flutter/material.dart';
class Mytextformfield extends StatefulWidget {
  const Mytextformfield({super.key});

  @override
  State<Mytextformfield> createState() => _MytextformfieldState();
}

class _MytextformfieldState extends State<Mytextformfield> {

  TextEditingController name=TextEditingController();
  TextEditingController mobile=TextEditingController();
  bool ischecked=false;

  void showmsg(String msg,Color c){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),backgroundColor: c,));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [
                //controls


                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(50)
                    ),
                     label: Text("Enter Name"),
                    hintText: "Enter Name",
                    // enabled: false,
                    suffixIcon: Icon(Icons.person)

                  ),
                  validator:(val){
                    print(val);
                    if(name.text.isEmpty)
                        return "Enter Name PLZ";

                    return null;
                  }
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Checkbox(value: ischecked, onChanged: (val){
                      setState(() {
                        ischecked=!ischecked;
                      });
                    }),
                    Text("Are you ready to play")
                  ],
                ),

                SizedBox(height: 20,),
                CheckboxListTile(
                  activeColor: Colors.green,
                    title: Text("I like Cricket"),
                    subtitle: Text("My fav game"),
                    tileColor: Colors.green[50],
                    value: ischecked, onChanged: (val){
                  setState(() {
                    ischecked=!ischecked;
                  });
                }),
                SizedBox(height: 20,),
                TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(50)
                      ),
                      label: Text("Enter Mobile"),
                      hintText: "Enter Mobile",
                      // enabled: false,
                      prefix: Text("+91"),
                      prefixIcon: Icon(Icons.phone),

                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed:(){
                    if(name.text.isEmpty) {
                      showmsg("Enter Name plz", Colors.red);
                      return;
                    }

                    if(mobile.text.length!=10) {
                      showmsg("Enter Valid Mobile Number", Colors.red);
                      return;
                    }

                    //save data
                    showmsg("Data Saved Successfully", Colors.green);
                    name.clear();
                    mobile.clear();
                    setState(() {
                      ischecked=false;
                    });


                }, child: Text("Submit"))

              ],
            ),
          ),
        ),
    );
  }
}
