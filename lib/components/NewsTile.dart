import 'package:flutter/material.dart';
import 'package:projectone/models/newdata.dart';

import '../screens/NewsDetail.dart';

class NewsTile extends StatefulWidget {
  final NewsData data;
  const NewsTile({required this.data, super.key});

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> NewsDetail(data: widget.data,)));
      },
      child: Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(widget.data.imageurl.toString()),
                    fit: BoxFit.fill

                  )
                ),
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.data.title.toString(),style: TextStyle(color: Colors.white),),
                Text(widget.data.author.toString(),style: TextStyle(color: Colors.white),),
                Text(widget.data.date.toString(),style: TextStyle(color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
